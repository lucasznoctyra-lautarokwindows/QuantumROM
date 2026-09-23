.class public final Lcom/android/settings/network/telephony/MobileNetworkImeiPreference;
.super Ljava/lang/Object;
.source "qb/109687721 a9bfde03ca9443b9752ece5979b2c9f40573dcd2a758dff1220e7cf2383bd455"

# interfaces
.implements Lcom/android/settingslib/metadata/PreferenceMetadata;
.implements Lcom/android/settingslib/preference/PreferenceBinding;
.implements Lcom/android/settingslib/metadata/PreferenceLifecycleProvider;
.implements Lcom/android/settingslib/metadata/PreferenceSummaryProvider;
.implements Lcom/android/settingslib/metadata/PreferenceTitleProvider;
.implements Lcom/android/settingslib/metadata/PreferenceAvailabilityProvider;


# instance fields
.field public context:Landroid/content/Context;

.field public formattedTitle:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public isAvailable:Z

.field public subId:I


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
    .locals 0

    .line 1
    const-string p0, "network_mode_imei_info"

    .line 2
    .line 3
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
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreference;->formattedTitle:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreference;->isAvailable:Z

    .line 5
    .line 6
    return p0
.end method

.method public final onCreate(Lcom/android/settingslib/metadata/PreferenceLifecycleContext;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "network_mode_imei_info"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/settingslib/metadata/PreferenceLifecycleContext;->findPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkImeiPreference$onCreate$1;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p0, v1, Lcom/android/settings/network/telephony/MobileNetworkImeiPreference$onCreate$1;->this$0:Lcom/android/settings/network/telephony/MobileNetworkImeiPreference;

    .line 19
    .line 20
    iput-object p1, v1, Lcom/android/settings/network/telephony/MobileNetworkImeiPreference$onCreate$1;->$context:Lcom/android/settingslib/metadata/PreferenceLifecycleContext;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
