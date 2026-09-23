.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/109687721 a9bfde03ca9443b9752ece5979b2c9f40573dcd2a758dff1220e7cf2383bd455"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final SUPPORT_IMEI_SV:Z

.field public static final sSalesCode:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_IMEI_SV:Z

    .line 17
    .line 18
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$1;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getNewKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final addImeiPreference(I)V
    .locals 9

    .line 1
    const v0, 0x7f1801bf

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    const v2, 0x7f150d85

    .line 16
    .line 17
    .line 18
    const-string v3, "min_number"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const v5, 0x7f050020

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const v4, 0x7f153172

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v4, 0x7f153170

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/telephony/SubscriptionManager;

    .line 85
    .line 86
    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    move-object v4, v1

    .line 118
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    const-string v3, "prl_version"

    .line 146
    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_7

    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 158
    .line 159
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Landroid/telephony/SubscriptionManager;

    .line 164
    .line 165
    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_5

    .line 170
    .line 171
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 172
    .line 173
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 178
    .line 179
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    invoke-virtual {v5, v4}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    goto :goto_4

    .line 196
    :cond_5
    move-object v4, v1

    .line 197
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_6

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :cond_6
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    const/4 v4, 0x0

    .line 225
    if-nez v3, :cond_9

    .line 226
    .line 227
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_8

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_8
    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    goto :goto_7

    .line 239
    :cond_9
    :goto_6
    move v0, v4

    .line 240
    :goto_7
    const-string v3, "meid_number"

    .line 241
    .line 242
    if-nez v0, :cond_a

    .line 243
    .line 244
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    goto/16 :goto_a

    .line 248
    .line 249
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    sget-object v6, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->sSalesCode:Ljava/lang/String;

    .line 260
    .line 261
    const-string v7, "VZW"

    .line 262
    .line 263
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    const-string v8, "ImeiInformation"

    .line 268
    .line 269
    if-nez v7, :cond_d

    .line 270
    .line 271
    const-string v7, "VPP"

    .line 272
    .line 273
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-nez v7, :cond_d

    .line 278
    .line 279
    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isMetroPCS(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_d

    .line 284
    .line 285
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-eqz v6, :cond_b

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 293
    .line 294
    const-class v6, Landroid/telephony/TelephonyManager;

    .line 295
    .line 296
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 301
    .line 302
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 303
    .line 304
    const-class v7, Landroid/telephony/SubscriptionManager;

    .line 305
    .line 306
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Landroid/telephony/SubscriptionManager;

    .line 311
    .line 312
    invoke-virtual {v6, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    if-eqz v6, :cond_c

    .line 317
    .line 318
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 319
    .line 320
    const-class v7, Landroid/telephony/TelephonyManager;

    .line 321
    .line 322
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 327
    .line 328
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 333
    .line 334
    .line 335
    move-result-object v5

    .line 336
    :cond_c
    const-string v6, "SetSummary - getMeid"

    .line 337
    .line 338
    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-eqz v6, :cond_e

    .line 350
    .line 351
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    goto :goto_9

    .line 360
    :cond_d
    :goto_8
    const-string v0, "SetSummary - Default"

    .line 361
    .line 362
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    :cond_e
    :goto_9
    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 369
    .line 370
    const/4 v3, 0x1

    .line 371
    invoke-static {v0, p1, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    if-eqz v6, :cond_f

    .line 380
    .line 381
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    :cond_f
    const-string v0, "imei"

    .line 390
    .line 391
    const-string v5, "Tap to view IMEI"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_10

    .line 399
    .line 400
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_10

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 407
    .line 408
    .line 409
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;

    .line 410
    .line 411
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 412
    .line 413
    .line 414
    iput-object p0, v3, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$2;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;

    .line 415
    .line 416
    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 420
    .line 421
    .line 422
    :cond_10
    sget-boolean v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->SUPPORT_IMEI_SV:Z

    .line 423
    .line 424
    const-string v3, "imei_sv"

    .line 425
    .line 426
    if-nez v0, :cond_11

    .line 427
    .line 428
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 433
    .line 434
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 435
    .line 436
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 441
    .line 442
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 443
    .line 444
    const-class v7, Landroid/telephony/SubscriptionManager;

    .line 445
    .line 446
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Landroid/telephony/SubscriptionManager;

    .line 451
    .line 452
    invoke-virtual {v6, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 453
    .line 454
    .line 455
    move-result-object v6

    .line 456
    if-eqz v6, :cond_12

    .line 457
    .line 458
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 459
    .line 460
    const-class v7, Landroid/telephony/TelephonyManager;

    .line 461
    .line 462
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 467
    .line 468
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 469
    .line 470
    .line 471
    move-result v6

    .line 472
    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    :cond_12
    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v5

    .line 480
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    if-eqz v6, :cond_13

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_13
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    if-eqz v1, :cond_14

    .line 492
    .line 493
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 494
    .line 495
    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    new-instance v6, Landroid/text/style/TtsSpan$DigitsBuilder;

    .line 499
    .line 500
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-direct {v6, v5}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 512
    .line 513
    .line 514
    move-result v6

    .line 515
    const/16 v7, 0x21

    .line 516
    .line 517
    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 518
    .line 519
    .line 520
    goto :goto_b

    .line 521
    :cond_14
    move-object v1, v5

    .line 522
    :goto_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 523
    .line 524
    .line 525
    move-result v5

    .line 526
    if-eqz v5, :cond_15

    .line 527
    .line 528
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    goto :goto_c

    .line 537
    :cond_15
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    :goto_c
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :goto_d
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 553
    .line 554
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitleSuffix(Landroid/content/Context;I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    :goto_e
    if-ge v4, v1, :cond_18

    .line 559
    .line 560
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    instance-of v3, v2, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 565
    .line 566
    if-eqz v3, :cond_16

    .line 567
    .line 568
    goto :goto_f

    .line 569
    :cond_16
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 574
    .line 575
    .line 576
    move-result v5

    .line 577
    if-nez v5, :cond_17

    .line 578
    .line 579
    const-string v5, "_"

    .line 580
    .line 581
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    if-nez v5, :cond_17

    .line 586
    .line 587
    invoke-static {p1, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->getNewKey(ILjava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    .line 615
    .line 616
    :cond_17
    :goto_f
    add-int/lit8 v4, v4, 0x1

    .line 617
    .line 618
    goto :goto_e

    .line 619
    :cond_18
    return-void
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 1
    const p0, 0x7f1513a1

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/StatusInfoSettings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x29

    .line 2
    .line 3
    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "top_level_about_phone"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string/jumbo v1, "ril.support.dynamic_imei"

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v3, "ImeiInformation"

    .line 31
    .line 32
    if-eqz v1, :cond_5

    .line 33
    .line 34
    const-string v1, "Dynamic IMEI is TRUE"

    .line 35
    .line 36
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->addImeiPreference(I)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v5, "getPrimaryImei() Exception e : "

    .line 56
    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v4, v3}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "primaryImei = "

    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const-string v5, "Imei for slot"

    .line 90
    .line 91
    if-nez v4, :cond_4

    .line 92
    .line 93
    move v4, v2

    .line 94
    :goto_1
    if-ge v4, v0, :cond_2

    .line 95
    .line 96
    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v6, v4, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-string v7, " = "

    .line 103
    .line 104
    invoke-static {v4, v5, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_1

    .line 127
    .line 128
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->addImeiPreference(I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v4, v2

    .line 135
    :goto_2
    if-ge v4, v0, :cond_6

    .line 136
    .line 137
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {v5, v4, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-nez v5, :cond_3

    .line 148
    .line 149
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->addImeiPreference(I)V

    .line 150
    .line 151
    .line 152
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    move v1, v2

    .line 156
    :goto_3
    if-ge v1, v0, :cond_6

    .line 157
    .line 158
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {v4, v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const-string v6, " == "

    .line 165
    .line 166
    invoke-static {v1, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->addImeiPreference(I)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    const-string v1, "Dynamic IMEI is False"

    .line 191
    .line 192
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :goto_4
    if-ge v2, v0, :cond_6

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->addImeiPreference(I)V

    .line 198
    .line 199
    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    :goto_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semGetSatelliteImei()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v1, "Satellite IMEI : "

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-nez v0, :cond_8

    .line 239
    .line 240
    const v0, 0x7f1801bd

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const v1, 0x7f15315c

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 262
    .line 263
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitleSuffix(Landroid/content/Context;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const-string v1, "imei_Satellite"

    .line 275
    .line 276
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-nez v2, :cond_7

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_7
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :goto_6
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :cond_8
    return-void
.end method

.method public final setSummaryText$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const p2, 0x7f150d85

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
