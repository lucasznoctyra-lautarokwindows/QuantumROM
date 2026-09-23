.class public final Lcom/android/settings/deviceinfo/imei/ImeiPreference;
.super Ljava/lang/Object;
.source "qb/109687721 a9bfde03ca9443b9752ece5979b2c9f40573dcd2a758dff1220e7cf2383bd455"

# interfaces
.implements Lcom/android/settingslib/metadata/PreferenceMetadata;
.implements Lcom/android/settingslib/preference/PreferenceBinding;
.implements Lcom/android/settingslib/preference/PreferenceBindingPlaceholder;
.implements Lcom/android/settingslib/metadata/PreferenceLifecycleProvider;
.implements Lcom/android/settingslib/metadata/PreferenceTitleProvider;
.implements Lcom/android/settingslib/metadata/PreferenceSummaryProvider;
.implements Lcom/android/settingslib/metadata/PreferenceAvailabilityProvider;


# instance fields
.field public formattedTitle:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public slotIndex:I


# virtual methods
.method public final bind(Landroidx/preference/Preference;Lcom/android/settingslib/metadata/PreferenceMetadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/preference/PreferenceBinding;->bind(Landroidx/preference/Preference;Lcom/android/settingslib/metadata/PreferenceMetadata;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiPreference;->slotIndex:I

    .line 2
    .line 3
    add-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    const-string v0, "imei_info"

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "Tap to view IMEI"

    .line 5
    .line 6
    return-object p0
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiPreference;->formattedTitle:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/settings/wifi/utils/ContextsKt;->isAdminUser(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/settings/Utils;->isMobileDataCapable(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final onCreate(Lcom/android/settingslib/metadata/PreferenceLifecycleContext;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiPreference;->getKey()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/settingslib/metadata/PreferenceLifecycleContext;->findPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/android/settings/deviceinfo/imei/ImeiPreference$onCreate$1;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, v1, Lcom/android/settings/deviceinfo/imei/ImeiPreference$onCreate$1;->$context:Lcom/android/settingslib/metadata/PreferenceLifecycleContext;

    .line 21
    .line 22
    iput-object p0, v1, Lcom/android/settings/deviceinfo/imei/ImeiPreference$onCreate$1;->this$0:Lcom/android/settings/deviceinfo/imei/ImeiPreference;

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
