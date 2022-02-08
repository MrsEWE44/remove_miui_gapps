#!/system/bin/sh
clear
UID=$(id -g)
SYSTEM_APP="/system/app"
SYSTEM_PRIV_APP="/system/priv-app"
SYSTEM_DATA_APP="/system/data-app"
SYSTEM_PRODUCT_APP="/system/product/app"
SYSTEM_PRODUCT_PRIV_APP="/system/product/priv-app"
SYSTEM_VENDOR_APP="/system/vendor/app"
SYSTEM_VENDOR_DATA_APP="/system/vendor/data-app"
SYSTEM_EXT_APP="/system/system_ext/app"
SYSTEM_EXT_PRIV_APP="/system/system_ext/priv-app"
CUST_APP="/cust"

echo "user : [$UID]"
MIUI_APP_3=("com.duokan.reader" "com.miui.fmservice" "com.miui.fm" "com.miui.misound" "com.miui.player" "com.xiaomi.payment" "com.android.browser" "com.miui.cloudbackup" "com.xiaomi.finddevice" "com.miui.miservice" "com.miui.systemAdSolution" "com.miui.personalassistant" "com.android.quicksearchbox" "com.xiaomi.market" "com.miui.accessibility" "com.mipay.wallet" "com.miui.video" "com.xiaomi.ab" "com.xiaomi.mi_connect_service" "com.xiaomi.simactivate.service" "com.miui.cloudservice" "com.miui.voiceassist" "com.miui.backup" "com.miui.contentextension" "com.xiaomi.drivemode" "com.android.email" "com.xiaomi.gamecenter" "com.miui.smarttravel" "com.xiaomi.scanner" "com.mfashiongallery.emag" "com.miui.virtualsim" "com.miui.notes")

RUI_APP_3=("com.coloros.backuprestore" "com.heytap.pictorial" "com.heytap.cloud" "com.finshell.wallet" "com.iflytek.speechsuite" "com.coloros.focusmode" "com.coloros.oshare" "com.coloros.assistantscreen" "com.coloros.activation" "com.android.printspooler" "com.coloros.smartdrive" "com.heytap.speechassist" "com.oppo.otaui" "com.coloros.translate.engine" "com.coloros.encryption" "com.android.backup" "com.coloros.note" "com.coloros.sceneservice" "com.coloros.personalassistant" "com.oppo.logkit" "com.coloros.securepay" "com.heytap.speechassist.engine" "com.coloros.directui" "com.heytap.browser" "com.nearme.atlas" "com.oppo.music" "com.coloros.video" "com.coloros.ocrscanner" "com.android.email" "com.coloros.childrenspace" "com.coloros.securitypermission" "com.coloros.remoteguardservice")

MIUI_EU_APP=("com.google.android.googlequicksearchbox" "com.miui.misound" "com.google.android.soundpicker" "pl.zdunex25.updater" "com.xiaomi.payment" "com.android.email" "com.miui.bugreport" "com.android.browser" "com.miui.cloudbackup" "com.xiaomi.finddevice" "com.miui.miservice" "com.miui.fm" "com.google.android.feedback" "cn.wps.moffice_eng.xiaomi.lite" "com.miui.huanji" "com.xiaomi.mi_connect_service" "com.miui.newmidrive" "com.google.android.apps.cloudprint" "com.miui.videoplayer" "com.google.ar.lens" "com.google.android.syncadapters.contacts" "com.google.android.partnersetup" "com.google.android.syncadapters.calendar" "com.google.android.tts" "com.google.android.gms.location.history" "com.google.android.onetimeinitializer" "com.android.vending")


RUI_SYS_APP_PACKAGENAME=("com.nearme.gamecenter" "com.heytap.quicksearchbox" "com.opos.ads" "com.coloros.digitalwellbeing" "com.realme.movieshot" "com.oplus.onetrace" "com.heytap.openid" "com.finshell.wallet" "com.heytap.music" "com.heytap.yoli" "com.coloros.translate.engine" "com.heytap.speechassist" "com.heytap.browser" "com.coloros.wifisecuredetect" "com.heytap.synergy" "com.heytap.pictorial" "com.heytap.cloud" "com.oppo.atlas" "com.coloros.healthcheck" "com.realme.wellbeing" "com.coloros.systemclone" "com.oplus.oscenter" "com.heytap.datamigration" "com.heytap.linker" "com.heytap.usercenter" "com.heytap.market" "com.coloros.apprecover" "com.coloros.safecenter" "com.coloros.bootreg" "com.coloros.regservice" "com.coloros.activation" "com.coloros.pictorial" "com.oppo.usercenter" "com.nearme.instant.platform" "com.nearme.romupdate" "com.nearme.statistics.rom" "com.coloros.phonemanager" "com.coloros.assistantscreen" "com.coloros.backuprestore" "com.coloros.backuprestore.remoteservice" "com.coloros.childrenspace" "com.coloros.cloud" "com.coloros.directui" "com.color.eyeprotect" "com.color.uiengine" "com.mobiletools.systemhelper" "com.oppo.ctautoregist" "com.coloros.feedback" "com.coloros.encryption" "com.realme.findphone.client2" "com.coloros.gamespace" "com.coloros.healthcheck" "com.iflytek.speechsuite" "com.nearme.instant.platform" "com.oppo.market" "com.nearme.atlas" "com.oppo.usercenter" "com.coloros.ocrscanner" "com.coloros.ocrservice" "com.oppo.aod" "com.oppo.atlas" "com.nearme.statistics.rom" "com.dropboxchmod" "com.oppo.engineermode" "com.oppo.logkit" "com.coloros.oppomultiapp" "com.coloros.operationManual" "com.coloros.activation" "com.coloros.translate.engine" "com.coloros.wallet" "com.coloros.oshare" "com.oppo.ota" "com.oppo.otaui" "com.coloros.remoteguardservice" "com.coloros.sau" "com.coloros.sauhelper" "com.nearme.browser" "com.google.android.configupdater" "com.coloros.findmyphone" "com.oppo.quicksearchbox" "com.oppo.music" "com.coloros.speechassist" "com.coloros.speechassist.engine" "com.coloros.sceneservice" "com.coloros.smartdrive" "com.coloros.smartlock" "com.coloros.video")

RUI_SYS_APP=("AssistantScreen" "BackupAndRestore" "BackupRestoreRemoteService" "BookmarkProvider" "BTtestmode" "BuiltlnPrintService" "CloudService" "ColorDirectService" "ColorDirectUI2" "ColorUIEngine" "com.mobiletools.systemhelper-19771" "CTAutoRegist" "Feedback" "FindMyPhoneClient2" "FloatAssistant" "GameSpace" "GoogleContactsSyncAdapter" "GooglePrintRecommendationService" "HealthCheck" "IFlySpeechService" "Instant" "InstantLocalService" "KeKeMarket" "KeKePay" "KeKeUserCenter" "OcrScanner2" "OppoAod" "OppoAtlasService" "OppoDropboxChmodService" "OppoEngineerMode" "OppoLFEHer" "OppoLogKit" "OppoMultiApp" "OppoOperationManual" "OppoPhoneActivation" "OppoTranslationService" "OppoTZUpdate" "OppoWallet" "OShare" "OTA" "OTAUI" "RegService" "RemoteGuardService" "RomUpdate" "SAUHelper" "SecurePay" "SupportServices" "SystemAppUpdateService")
RUI_SYS_PRIV_APP=("HeyTapUserCenter" "HeyTapSpeechService" "HeyTapSpeechAssist" "Browser" "ConfigUpdater" "FindMyPhone" "GlobalSearch" "GmsCore" "GoogleBackupTransport" "GoogleOneTimeInitializer" "GooglePartnerSetup" "GooglePlayServicesUpdater" "GoogleServicesFramework" "OppoBootReg" "OppoMusic" "OppoSpeechAssist" "OppoSpeechService" "SceneService" "seccamservice" "SmartDrive" "SmartLock" "SOSHelper" "VideoGallery")
RUI_SYS_PRODUCT_PRIV_APP=("ConfigUpdater" "GmsCore" "GoogleBackupTransport" "GoogleOneTimeInitializer" "GooglePartnerSetup" "GooglePlayServicesUpdater" "GoogleServicesFramework")
RUI_SYS_PRODUCT_APP=("GoogleContactsSyncAdapter")

MIUI_SYS_APP=("CloudService" "com.xiaomi.macro" "HybridAccessory" "HybridPlatform" "Joyose" "mab" "mi_connect_service" "MiCloudSync" "MiLinkService2" "MiuiBugReport" "MiPlayClient" "MiuiAccessibility" "MiuiPrintSpoolerBeta" "MiuiSuperMarket" "MSA" "Music" "NextPay" "PaymentService" "TSMClient" "Updater" "VoiceAssist" "UPTsmService" "XiaomiAccount" "XMCloudEngine" "XMSFKeeper" "YouDaoEngine" "XMSFKeeper")
MIUI_SYS_DATA_APP=("Email" "GameCenter" "Huanji" "MiDrive" "MiFinance" "MiLiveAssistant" "Mipay" "MiRadio" "MiShop" "MiuiScanner" "NewHome" "SmartTravel" "VipAccount" "VirtualSim" "XiaoAiSpeechEngine" "Youpin")
MIUI_SYS_PRIV_APP=("Backup" "BackupRestoreConfirmation" "Browser" "	BuiltlnPrintService" "CloudBackup" "CloudServiceSysbase" "ContentExtension" "DownloadProvider" "DownloadProviderUi" "FindDevice" "MiGameCenterSDKService" "MiRcs" "MiService" "MiuiVideo" "PersonalAssistant" "QuickSearchBox" )
MIUI_SYS_PRODUCT_APP=("aiasst_service")
MIUI_SYS_EXT_APP=("FM")
MIUI_VENDOR_APP=("Joyose")
MIUI_VENDOR_DATA_APP=("MiGalleryLockscreen" "SmartHome" "wps-lite" "XMRemoteController" "BaidulME" "com.iflytek.inputmethod.miui")

MIUI_13_SYS_APP=("MIUIAccessibility" "AiAsstVision" "MSA" "AnalyticsCore" "AutoTest" "BookmarkProvider" "CloudService" "com.xiaomi.macro" "FidoAuthen" "FidoClient" "HybridAccessory" "HybridPlatform" "Joyose" "mab" "MiCloudSync" "MiConnectService" "MiLink" "MiPlayClient" "MiuiAccessibility" "MiuiAudioMonitor" "MiuiBugReport" "MiuiContentCatcher" "MIUIgreenguard" "MiuiPrintSpoolerBeta" "MIUISuperMarket" "MIUITouchAssistant" "NextPay" "PaymentService" "TSMClient" "Updater" "UPTsmService" "VoiceAssist" "VoiceTrigger" "VsimCore" "XiaomiAccount" "XMCloudEngine" "XMSFKeeperAll" "YouDaoEngine")
MIUI_13_SYS_DATA_APP=("Health" "MiDrive" "MIFinance" "MIGalleryLockscreen" "MiLiveAssistant" "MIpay" "MIRadio" "MiShop" "MIUIDuokanReader" "MIUIEmail" "MIUIGameCenter" "MIUIHuanji" "MIUINewHome" "MIUIScanner" "MIUINotes" "MIUISmartTravel" "MIUIVipAccount" "MIUIVirtualSim" "MIUIXiaoAiSpeechEngine" "MIUIYoupin" "ThirdAppAssistant")
MIUI_13_SYS_PRIV_APP=("Backup" "BackupRestoreConfirmation" "BuiltlnPrintService" "CloudBackup" "CloudServiceSysbase" "FindDevice" "MiGameCenterSDKService" "MiRcs" "MIService" "MIUIBrowser" "MIUIContentExtension" "MIUIMusic" "MIUIPersonalAssistant" "MIUIQuickSearchBox" "MIUIVideo" "MIUIVipService")
MIUI_13_PRODUCT_APP=("aiasst_service")
MIUI_13_VENDOR_APP=("Joyose")
MIUI_13_VENDOR_DATA_APP=("BaiduME" "com.iflytek.inputmethod.miui" "SmartHome" "wps-lite" "XMRemoteController")
MIUI_13_PACKAGE=("com.baidu.input_mi" "com.iflytek.inputmethod.miui" "com.xiaomi.smarthome" "cn.wps.moffice_eng.xiaomi.lite" "com.duokan.phone.remotecontroller" "com.xiaomi.aiasst_service" "com.duokan.reader" "com.android.backupconfirm" "com.miui.backup" "com.miui.cloudservice.sysbase" "com.android.bips" "com.xiaomi.finddevice" "com.xiaomi.mircs" "com.miui.miservice" "com.miui.contentextension" "com.miui.player" "com.miui.personalassistant" "com.miui.video" "com.miui.vipservice" "com.android.quicksearchbox" "com.android.browser" "com.xiaomi.gamecenter.sdk.service" "com.miui.cloudbackup" "com.xiaomi.shop" "com.miui.fm" "com.mipay.wallet" "com.mi.liveassistant" "com.mfashiongallery.emag" "com.xiaomi.jr" "com.miui.newmidrive" "com.mi.health" "com.miui.thirdappassistant" "com.xiaomi.youpin" "com.xiaomi.mibrain.speech" "com.miui.virtualsim" "com.xiaomi.vipaccount" "com.miui.smarttravel" "com.xiaomi.scanner" "com.miui.notes" "com.miui.newhome" "com.miui.huanji" "com.xiaomi.gamecenter" "com.android.email" "com.miui.hybrid" "com.miui.hybrid.accessory" "com.fido.xiaomi.uafclient" "com.fido.asm" "com.xiaomi.macro" "com.miui.cloudservice" "com.mi.AutoTest" "com.miui.analytics" "com.xiaomi.aiasst.vision" "com.miui.audiomonitor" "com.miui.accessibility" "com.xiaomi.mipay_client" "com.milink.service" "com.xiaomi.mi_connect_service" "com.miui.micloudsync" "com.xiaomi.ab" "com.xiaomi.joyose" "org.ifaa.aidl.manager" "com.xiaomi.market" "com.android.printspooler" "com.miui.greenguard" "com.miui.contentcatcher" "com.miui.bugreport" "com.miui.nextpay" "com.miui.systemAdSolution" "com.miui.tsmclient" "com.miui.translationservice" "com.xiaomi.payment" "com.android.updater" "com.miui.voicetrigger" "com.miui.voiceassist" "com.unionpay.tsmservice.mi" "com.miui.vsimcore" "com.miui.translation.youdao" "com.xiaomi.xmsfkeeper" "com.miui.translation.xmcloud" "com.xiaomi.account")

MIUI_EU_SYS_APP=("BookmarkProvider" "CloudService" "com.xiaomi.macro"  "GooglePrintRecommendationService" "Email" "Health" "Joyose" "Lens" "LiveWallpapersPicker" "mi_connect_service" "MiuiBugReport" "MiCloudSync" "MiDrive" "MiGalleryLockscreen" "MiLinkService" "MiPlayClient" "MiRadio" "MiuiVideoGlobal" "NextPay" "Notes" "PaymentService" "PrintSpooler"  "Updater" "XiaomiAccount" "wps-lite" "XMSFKeeper")
MIUI_EU_SYS_PRIV_APP=("Backup" "BackupRestoreConfirmation" "BuiltlnPrintService" "CloudBackup" "CloudServiceSysbase" "DownloadProvider" "DownloadProviderUi" "FindDevice" "MiBrowserGlobal" "MiMover" "MiService" "MiuiScanner" "Music" "MusicFX" "PersonalAssistant" "QuickSearchBox")
MIUI_EU_SYS_PRODUCT_APP=("GoogleCalendarSyncAdapter" "GoogleContactsSyncAdapter" "GoogleLocationHistory" "GoogleTTS")
MIUI_EU_SYS_PRODUCT_PRIV_APP=("AndroidAutoSub" "CarrierServices" "GoogleServicesFramework" "ConfigUpdater" "GmsCore" "GooglePartnerSetup" "GoogleRestore" "Phonesky" "SetupWizard" "Velvet")
MIUI_EU_SYS_EXT_APP=("FM")
MIUI_EU_SYS_EXT_PRIV_APP=("GoogleFeedback" "GoogleServicesFramework" "GoogleOneTimeInitializer")

MIUI_GLOBAL_SYS_APP=("BookmarkProvider" "CloudService" "facebook-appmanager" "FidoAuthen" "FidoClient" "GooglePrintRecommendationService" "HybridAccessory" "HybridPlatform" "InMipay" "Joyose" "Lens" "mi_connect_service" "MiCloudSync" "MiLinkService2" "MiPicks" "MiPlayClient" "MiuiBugReport" "MiuiPrintSpoolerBeta" "MiuiVideoPlayer" "MSA-Global" "Notes" "PaymentService" "PlayAutoInstallStubApp" "SystemAppUpdater" "Updater" "XiaomiAccount" "XMSFKeeper")
MIUI_GLOBAL_SYS_DATA_APP=("MiCreditInStub" "MiRadio")
MIUI_GLOBAL_SYS_PRIV_APP=("Backup" "BackupRestoreConfirmation" "BuiltlnPrintService" "CloudBackup" "CloudServiceSysbase" "DownloadProvider" "DownloadProviderUi" "facebook-installer" "facebook-services" "FindDevice" "GameCenterGlobal" "MiDrop" "MiService" "MiuiMusicGlobal" "MiuiScanner" "MusicFX" "PartnerBookmarksProvider")
MIUI_GLOBAL_PRODUCT_APP=("CalendarGoogle" "Chrome" "com.google.android.modulemetadata" "com.google.mainline.telemetry" "Gmail2" "GoogleContacts" "GoogleContactsSyncAdapter" "GoogleLocationHistory" "GoogleOne" "GoogleTTS" "LatinlmeGoogle" "Maps" "Messages" "YouTube")
MIUI_GLOBAL_PRODUCT_PRIV_APP=("AndroidAutoSub" "CarrierServices" "ConfigUpdater" "GmsCore" "GoogleAssistant" "GoogleDialer" "GooglePartnerSetup" "GoogleRestore" "HotwordEnrollmentOKGoogleHEXAGON" "HotwordEnrollmentXGoogleHEXAGON" "OobConfig" "Phonesky" "Turbo" "Velvet" "Wellbeing")
MIUI_GLOBAL_SYS_EXT_APP=("FM")
MIUI_GLOBAL_SYS_EXT_PRIV_APP=("GoogleFeedback" "GoogleServicesFramework" "GoogleOneTimeInitializer" "SetupWizard")
MIUI_GLOBAL_VENDOR_APP=("Joyose")
MIUI_GLOBAL_VENDOR_DATA_APP=("wps-lite" "GlobalFashiongallery" "XMRemoteController")

FUNTOUCH_4_PACKAGE=("com.vivo.videoeditor" "com.vivo.collage" "com.vivo.game" "com.vivo.Tips" "com.ibimuyu.lockscreen"  "com.android.skintwo" "com.android.skinthree" "com.android.skinfive" "com.yozo.vivo.office" "com.vivo.email" "com.bbk.VoiceOneshot" "com.bbk.VoiceAssist" "com.vlife.vivo.wallpaper" "com.vivo.space" "com.vivo.assistant" "com.vivo.hiboard" "com.vivo.motionrecognition" "com.bbk.updater" "com.vivo.abe" "com.baidu.duersdk.opensdk" "com.bbk.account" "com.bbk.appstore" "com.bbk.cloud" "com.android.BBKCrontab" "com.android.bbklog" "com.android.bbkmusic" "com.vivo.globalsearch" "com.android.VideoPlayer" "com.vivo.findphone" "com.android.BBKPhoneInstructions")
FUNTOUCH_SYS_APP=( "VoiceOneshot" "VoiceAssist" "VLife_vivo" "vivospace-v2" "VivoAssistant" "HiBoard" "AppBehaviorEngine" "MotionRecognition" "Updater" "BaiduOnlineSpeechService" "BBKAccount" "BBKAppStore" "BBKCloud" "BBKCrontab" "BBKLOG" "BBKMusic" "BBKPhoneInstructions" "BBKVideoPlayer" "FindPhone" "GlobalSearch")
FUNTOUCH_SYS_CUST_PRIV_APP=("Email" "VivoOffice")


remove_cust_app(){
	mount -o remount,rw /
	mount -o remount,rw /cust
	rm -rf /cust/*
	mount -o remount,ro /cust
	mount -o remount,ro /
}

remove_sys_app_core(){
	path=$1
	arr=$2
	for pp in ${arr[*]}
	do
		rm -rf "$path/$pp"
	done
}

disable_app_core(){
	arr=$1
	for pp in ${arr[*]}
	do
		am force-stop $pp
		pm clear $pp
		pm disable-user $pp
	done
}

clear_app_core(){
	arr=$1
	for pp in ${arr[*]}
	do
		pm clear $pp
	done

}

stop_app_core(){
	arr=$1
	for pp in ${arr[*]}
	do
		am force-stop $pp
	done

}

uninstall_app_core(){
	arr=$1
	for pp in ${arr[*]}
	do
		am force-stop $pp
		pm clear $pp
		pm uninstall --user 0 $pp
	done
}

mount_rw_sys(){
	mount -o remount,rw /
	mount -o remount,rw /product
	mount -o remount,rw /system_ext
	mount -o remount,rw /vendor
}

mount_ro_sys(){
	mount -o remount,ro /product
	mount -o remount,ro /system_ext
	mount -o remount,ro /vendor
	mount -o remount,ro /
}

remove_sys_app_miui13(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${MIUI_13_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${MIUI_13_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_13_SYS_DATA_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_APP" "${MIUI_13_PRODUCT_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_APP" "${MIUI_13_VENDOR_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_DATA_APP" "${MIUI_13_VENDOR_DATA_APP[*]}"
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_sys_app_rui(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${RUI_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${RUI_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_PRIV_APP" "${RUI_SYS_PRODUCT_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_APP" "${RUI_SYS_PRODUCT_APP[*]}"
	mount_ro_sys
	remove_cust_app
	remove_app_3
}


remove_sys_app_miui_global(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${MIUI_GLOBAL_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${MIUI_GLOBAL_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_GLOBAL_SYS_DATA_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_APP" "${MIUI_GLOBAL_PRODUCT_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_PRIV_APP" "${MIUI_GLOBAL_PRODUCT_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_APP" "${MIUI_GLOBAL_VENDOR_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_DATA_APP" "${MIUI_GLOBAL_VENDOR_DATA_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_APP" "${MIUI_GLOBAL_SYS_EXT_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_PRIV_APP" "${MIUI_GLOBAL_SYS_EXT_PRIV_APP[*]}"
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_sys_app_miui_eu(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${MIUI_EU_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${MIUI_EU_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_APP" "${MIUI_EU_SYS_PRODUCT_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_PRIV_APP" "${MIUI_EU_SYS_PRODUCT_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_APP" "${MIUI_EU_SYS_EXT_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_PRIV_APP" "${MIUI_EU_SYS_EXT_PRIV_APP[*]}"
	mount_ro_sys
	remove_cust_app
	remove_app_3
}


remove_sys_app_miui(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${MIUI_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${MIUI_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_SYS_DATA_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_APP" "${MIUI_SYS_PRODUCT_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_APP" "${MIUI_VENDOR_APP[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_DATA_APP" "${MIUI_VENDOR_DATA_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_APP" "${MIUI_SYS_EXT_APP[*]}"
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

disable_app_miui_eu(){
	clear_app_miui_eu
	disable_app_core "${MIUI_EU_APP[*]}"
}

uninstall_app_miui_eu(){
	uninstall_app_core "${MIUI_EU_APP[*]}"
}

stop_app_funtouch4(){
	stop_app_3
	stop_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

clear_app_funtouch4(){
	stop_app_funtouch4
	clear_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

disable_app_funtouch4(){
	clear_app_funtouch4
	disable_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

stop_app_3(){
	pm list packages -3 |cut -d':' -f2 |while read f
	do
		am force-stop $f
	done
}

remove_app_3(){
	pm list packages -3 |cut -d':' -f2 |while read f
	do
		if [ "$f" == "com.topjohnwu.magisk" ] || [ "$f" == "bin.mt.plus" ]
		then
			echo "skip!"
		else
			pm uninstall $f
		fi
	done
	echo "remove ok !!!"
}

clear_app_miui_eu(){
	stop_app_miui_eu
	clear_app_core "${MIUI_EU_APP[*]}"
}
stop_app_miui_eu(){
	stop_app_3
	stop_app_core "${MIUI_EU_APP[*]}"
}

disable_app_rui(){
	clear_app_rui
	disable_app_core "${RUI_APP_3[*]}"
	disable_app_core "${RUI_SYS_APP_PACKAGENAME[*]}"
}

stop_app_rui(){
	stop_app_3
	stop_app_core "${RUI_APP_3[*]}"
}

clear_app_rui(){
	stop_app_rui
	clear_app_core "${RUI_APP_3[*]}"
}

uninstall_app_rui(){
	uninstall_app_core "${RUI_APP_3[*]}"
	uninstall_app_core "${RUI_SYS_APP_PACKAGENAME[*]}"
}

stop_app_miui13(){
	stop_app_3
	stop_app_core "${MIUI_13_PACKAGE[*]}"
}
clear_app_miui13(){
	stop_app_miui13
	clear_app_core "${MIUI_13_PACKAGE[*]}"
}

disable_app_miui13(){
	clear_app_miui13
	disable_app_core "${MIUI_13_PACKAGE[*]}"
}

uninstall_app_miui13(){
	uninstall_app_core "${MIUI_13_PACKAGE[*]}"
}

uninstall_app_funtouch4(){
	uninstall_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

disable_app_miui(){
	clear_app_miui
	disable_app_core "${MIUI_APP_3[*]}"
}

clear_app_miui(){
	stop_app_miui
	clear_app_core "${MIUI_APP_3[*]}"
}

stop_app_miui(){
	stop_app_3
	stop_app_core "${MIUI_APP_3[*]}"
}


uninstall_app_miui(){
	uninstall_app_core "${MIUI_APP_3[*]}"
}

remove_app_miui_global(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_global
	else
		echo "no support $UID"
	fi
}

remove_app_miui_eu(){
	if [ "$UID" == "0" ]
	then
		clear_app_miui_eu
		uninstall_app_miui_eu
		remove_sys_app_miui_eu
	else
		disable_app_miui_eu
		uninstall_app_miui_eu
	fi
}

remove_app_miui13(){
	if [ "$UID" == "0" ]
	then
		clear_app_miui13
		uninstall_app_miui13
		remove_sys_app_miui13
	else
		disable_app_miui13
		uninstall_app_miui13
	fi
}


remove_app_funtouch4(){
	if [ "$UID" == "0" ]
	then
		clear_app_funtouch4
		
	else
		disable_app_funtouch4
		uninstall_app_funtouch4
	fi
}

remove_app_miui(){
	if [ "$UID" == "0" ]
	then
		clear_app_miui
		uninstall_app_miui
		remove_sys_app_miui
	else
		disable_app_miui
		uninstall_app_miui
	fi
}

remove_app_rui(){
	if [ "$UID" == "0" ]
	then
		clear_app_rui
		uninstall_app_rui
		remove_sys_app_rui
	else
		disable_app_rui
		uninstall_app_rui
	fi
	pm clear com.oppo.launcher
}


fix_rui_menu(){
	if [ "$UID" == "0" ]
	then
		echo "not support $UID"
		exit 1;
	else
		echo -ne "1.fix safecenter\ninput : "
		read xx
		case $xx in
		1)
			pm enable com.coloros.safecenter
			exit 0;;
		*)remove_app_menu;;
		esac
	fi
}

remove_app_menu(){
	echo -ne "1.miui\n2.color(realmeui)\n3.miui(eu)\n4.miui(global)\n5.miui13\n6.funtouch4\n7.other\ninput : "
	read xx
	case $xx in
	1)
		remove_app_miui
		exit 0;;
	2)
		remove_app_rui
		exit 0;;
	3)
		remove_app_miui_eu
		exit 0;;
	4)
		remove_app_miui_global
		exit 0;;
	5)
		remove_app_miui13
		exit 0;;
	6)
		remove_app_funtouch4
		exit 0;;
	7)
		remove_app_3
		exit 0;;
	*)remove_app_menu;;
	esac
}
disable_app_menu(){
	echo -ne "1.miui\n2.color(realmeui)\n3.miui(eu)\n4.miui13\n5.funtouch4\n6.other\ninput : "
	read xx2
	case $xx2 in
	1)
		disable_app_miui
		exit 0;;
	2)
		disable_app_rui
		exit 0;;
	3)
		disable_app_miui_eu
		exit 0;;
	4)
		disable_app_miui13
		exit 0;;
	5)
		disable_app_funtouch4
		exit 0;;
	6)
		stop_app_3
		exit 0;;
	*)stop_app_menu;;
	esac
}

main(){
	echo -ne "1.remove app\n2.disable app\n3.fix app\ninput : "
	read xxx
	case $xxx in
	1)
		remove_app_menu
		exit 0;;
	2)
		disable_app_menu
		exit 0;;
	3)
		fix_rui_menu
		exit 0;;
	*)main;;
	esac
}
main
