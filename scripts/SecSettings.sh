PATCH_SECSETTINGS() {
    echo " "
    echo -e "Patch SecSettings"
    echo -e "Authors: Dai-doz / Salvo giangreco"
    echo -e "Processing..."

    if [ "$#" -ne 1 ]; then
        echo -e "Usage: ${FUNCNAME[0]} <EXTRACTED_FIRM_DIR>"
        return 1
    fi

    local EXTRACTED_FIRM_DIR="$1"
    local TARGET_DIR="${EXTRACTED_FIRM_DIR}/system/system/priv-app/SecSettings"
    local INPUT_APK="${TARGET_DIR}/SecSettings.apk"
    local MOD_DIR="${QT_DIR}/Mods/settings/SecSettings.apk"
    local APKTOOL_JAR="${QT_DIR}/bin/java/apktool.jar"
    local FW_DIR="${QT_DIR}/bin/java/apktool/framework"
    local SIGNAPK_JAR="${QT_DIR}/bin/signapk/signapk.jar"
    local CERT_PEM="${QT_DIR}/security/aosp_platform.x509.pem"
    local KEY_PK8="${QT_DIR}/security/aosp_platform.pk8"
    local TAG="ONEUI"
    local WORK_TMP="${WORK_DIR}/secsettings_tmp"
    local DOWNLOAD_URL="https://github.com/lucasznoctyra-lautarokwindows/QuantumROM/releases/download/Package/SecSettings.apk"

    if [ ! -f "$INPUT_APK" ]; then
        echo -e "- Prebuilt APK not found locally. Downloading via wget..."
        mkdir -p "$PREBUILT_DIR"
        wget -q --show-progress -O "$INPUT_APK" "$DOWNLOAD_URL" || {
            echo -e "- Download failed! Check URL: $DOWNLOAD_URL"
            return 1
        }
    fi

    if [ ! -f "$APKTOOL_JAR" ]; then
        echo -e "Apktool jar not found: $APKTOOL_JAR"
        return 1
    fi

    rm -rf "$WORK_TMP"
    mkdir -p "$WORK_TMP/d"

    echo -e "- Decompiling SecSettings.apk from extracted firmware..."
    java -jar "$APKTOOL_JAR" d -f -p "$FW_DIR" -t "$TAG" -o "$WORK_TMP/d" "$INPUT_APK"

    echo -e "- Copying modded smali and assets..."
    [ -d "$MOD_DIR/smali" ] && cp -a "$MOD_DIR/smali/." "$WORK_TMP/d/smali/"
    [ -d "$MOD_DIR/smali_classes2" ] && cp -a "$MOD_DIR/smali_classes2/." "$WORK_TMP/d/smali_classes2/"
    [ -d "$MOD_DIR/smali_classes4" ] && cp -a "$MOD_DIR/smali_classes4/." "$WORK_TMP/d/smali_classes4/"
    [ -d "$MOD_DIR/smali_classes5" ] && cp -a "$MOD_DIR/smali_classes5/." "$WORK_TMP/d/smali_classes5/"

    for d in layout drawable drawable-nodpi; do
        [ -d "$MOD_DIR/res/$d" ] && cp -a "$MOD_DIR/res/$d/." "$WORK_TMP/d/res/$d/"
    done

    cp "$MOD_DIR/res/xml/unica_top_settings.xml" \
       "$MOD_DIR/res/xml/unica_extra_settings.xml" \
       "$MOD_DIR/res/xml/unica_ui_settings.xml" "$WORK_TMP/d/res/xml/" 2>/dev/null || true

    echo -e "- Injecting AndroidManifest and XML entries..."
    if [ -f "$MOD_DIR/AndroidManifest.xml" ]; then
        tail -n +2 "$MOD_DIR/AndroidManifest.xml" > "$WORK_TMP/i"
        sed -i '/<\/application>/{
            r '"$WORK_TMP/i"'
            a\<\/application>
            d
        }' "$WORK_TMP/d/AndroidManifest.xml"
    fi

    if [ -f "$MOD_DIR/res/xml/sec_top_level_settings.xml" ]; then
        tail -n +2 "$MOD_DIR/res/xml/sec_top_level_settings.xml" > "$WORK_TMP/i2"
        sed -i '/TopLevelAdvancedFeatures/{
            r '"$WORK_TMP/i2"'
        }' "$WORK_TMP/d/res/xml/sec_top_level_settings.xml"
    fi

    echo -e "- Merging resources and translations..."
    for f in "$MOD_DIR"/res/values/*.xml; do
        [ -f "$f" ] || continue
        n=$(basename "$f")
        sed -e '/?xml/d' -e '/<\/\?resources>/d' "$f" > "$WORK_TMP/e_$n"
        sed -i '/<\/resources>/{
            r '"$WORK_TMP/e_$n"'
            a\</resources>
            d
        }' "$WORK_TMP/d/res/values/$n"
    done

    for dir in "$MOD_DIR"/res/values-*; do
        [ -d "$dir" ] || continue
        loc=$(basename "$dir")
        [ ! -f "$WORK_TMP/d/res/$loc/strings.xml" ] && continue
        sed -e '/?xml/d' -e '/<\/\?resources>/d' "$dir/strings.xml" > "$WORK_TMP/e_$loc"
        sed -i '/<\/resources>/{
            r '"$WORK_TMP/e_$loc"'
            a\</resources>
            d
        }' "$WORK_TMP/d/res/values/$loc/strings.xml"
    done

    echo -e "- Recompiling SecSettings.apk..."
    java -jar "$APKTOOL_JAR" b -p "$FW_DIR" -o "$WORK_TMP/unsigned.apk" "$WORK_TMP/d"

    echo -e "- Signing and replacing SecSettings.apk..."
    if [ -f "$SIGNAPK_JAR" ] && [ -f "$CERT_PEM" ] && [ -f "$KEY_PK8" ]; then
        java -jar "$SIGNAPK_JAR" "$CERT_PEM" "$KEY_PK8" \
            "$WORK_TMP/unsigned.apk" "$TARGET_DIR/SecSettings.apk"
        echo -e "Signed and replaced SecSettings.apk in target partition."
    else
        echo -e "Signing keys missing, replacing with unsigned build directly..."
        cp -fa "$WORK_TMP/unsigned.apk" "$TARGET_DIR/SecSettings.apk"
    fi

    rm -rf "$WORK_TMP"

    echo -e "SecSettings patch done"
}
