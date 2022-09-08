#!/system/bin/sh
OPTS="$1"
OPTS2="$2"
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


MIUI_BASE_PACKAGE=("com.miui.backup" "com.miui.cloudbackup" "com.miui.cloudservice.sysbase" "com.miui.cloudservice" "com.miui.micloudsync" "com.miui.qr" "com.xiaomi.payment" "com.miui.analytics" "com.android.quicksearchbox" "com.xiaomi.mi_connect_service")
MIUI_BASE_PACKAGE_LITE=("com.miui.videoplayer" "com.miui.video" "com.miui.player" "com.miui.miservice" "com.android.updater" "com.miui.backup" "com.miui.personalassistant")

GAPPS_BASE_PACKAGE=("com.google.android.syncadapters.calendar" "com.google.android.syncadapters.contacts" "com.google.android.apps.googleassistant" "com.google.android.dialer" "com.android.hotwordenrollment.okgoogle" "com.android.hotwordenrollment.xgoogle" "com.google.android.calendar" "com.android.chrome" "com.google.android.gm" "com.google.android.contacts" "com.google.android.apps.subscriptions.red" "com.google.android.apps.maps" "com.google.android.apps.messaging" "com.google.android.youtube" "com.google.android.projection.gearhead" "com.google.android.ims" "com.google.android.gsf"  "com.android.vending" "com.google.android.partnersetup" "com.google.android.apps.restore" "com.android.carrierconfig" "com.google.android.gms" "com.google.android.onetimeinitializer" "com.google.android.feedback" "com.google.android.tts" "com.google.android.inputmethod.latin" "com.google.android.gms.location.history")

RUI_APP_3=("com.coloros.backuprestore" "com.heytap.pictorial" "com.heytap.cloud" "com.finshell.wallet" "com.iflytek.speechsuite" "com.coloros.focusmode" "com.coloros.oshare" "com.coloros.assistantscreen" "com.coloros.activation" "com.android.printspooler" "com.coloros.smartdrive" "com.heytap.speechassist" "com.oppo.otaui" "com.coloros.translate.engine" "com.coloros.encryption" "com.android.backup" "com.coloros.note" "com.coloros.sceneservice" "com.coloros.personalassistant" "com.oppo.logkit" "com.coloros.securepay" "com.heytap.speechassist.engine" "com.coloros.directui" "com.heytap.browser" "com.nearme.atlas" "com.oppo.music" "com.coloros.video" "com.coloros.ocrscanner" "com.android.email" "com.coloros.childrenspace" "com.coloros.securitypermission" "com.coloros.remoteguardservice")

RUI_SYS_APP_PACKAGENAME=("com.nearme.gamecenter" "com.heytap.quicksearchbox" "com.opos.ads" "com.coloros.digitalwellbeing" "com.realme.movieshot" "com.oplus.onetrace" "com.heytap.openid" "com.finshell.wallet" "com.heytap.music" "com.heytap.yoli" "com.coloros.translate.engine" "com.heytap.speechassist" "com.heytap.browser" "com.coloros.wifisecuredetect" "com.heytap.synergy" "com.heytap.pictorial" "com.heytap.cloud" "com.oppo.atlas" "com.coloros.healthcheck" "com.realme.wellbeing" "com.coloros.systemclone" "com.oplus.oscenter" "com.heytap.datamigration" "com.heytap.linker" "com.heytap.usercenter" "com.heytap.market" "com.coloros.apprecover" "com.coloros.safecenter" "com.coloros.bootreg" "com.coloros.regservice" "com.coloros.activation" "com.coloros.pictorial" "com.oppo.usercenter" "com.nearme.instant.platform" "com.nearme.romupdate" "com.nearme.statistics.rom" "com.coloros.phonemanager" "com.coloros.assistantscreen" "com.coloros.backuprestore" "com.coloros.backuprestore.remoteservice" "com.coloros.childrenspace" "com.coloros.cloud" "com.coloros.directui" "com.color.eyeprotect" "com.color.uiengine" "com.mobiletools.systemhelper" "com.oppo.ctautoregist" "com.coloros.feedback" "com.coloros.encryption" "com.realme.findphone.client2" "com.coloros.gamespace" "com.coloros.healthcheck" "com.iflytek.speechsuite" "com.nearme.instant.platform" "com.oppo.market" "com.nearme.atlas" "com.oppo.usercenter" "com.coloros.ocrscanner" "com.coloros.ocrservice" "com.oppo.aod" "com.oppo.atlas" "com.nearme.statistics.rom" "com.dropboxchmod" "com.oppo.engineermode" "com.oppo.logkit" "com.coloros.oppomultiapp" "com.coloros.operationManual" "com.coloros.activation" "com.coloros.translate.engine" "com.coloros.wallet" "com.coloros.oshare" "com.oppo.ota" "com.oppo.otaui" "com.coloros.remoteguardservice" "com.coloros.sau" "com.coloros.sauhelper" "com.nearme.browser" "com.google.android.configupdater" "com.coloros.findmyphone" "com.oppo.quicksearchbox" "com.oppo.music" "com.coloros.speechassist" "com.coloros.speechassist.engine" "com.coloros.sceneservice" "com.coloros.smartdrive" "com.coloros.smartlock" "com.coloros.video")

RUI_SYS_APP=("AssistantScreen" "BackupAndRestore" "BackupRestoreRemoteService" "BookmarkProvider" "BTtestmode" "BuiltlnPrintService" "CloudService" "ColorDirectService" "ColorDirectUI2" "ColorUIEngine" "com.mobiletools.systemhelper-19771" "CTAutoRegist" "Feedback" "FindMyPhoneClient2" "FloatAssistant" "GameSpace" "GoogleContactsSyncAdapter" "GooglePrintRecommendationService" "HealthCheck" "IFlySpeechService" "Instant" "InstantLocalService" "KeKeMarket" "KeKePay" "KeKeUserCenter" "OcrScanner2" "OppoAod" "OppoAtlasService" "OppoDropboxChmodService" "OppoEngineerMode" "OppoLFEHer" "OppoLogKit" "OppoMultiApp" "OppoOperationManual" "OppoPhoneActivation" "OppoTranslationService" "OppoTZUpdate" "OppoWallet" "OShare" "OTA" "OTAUI" "RegService" "RemoteGuardService" "RomUpdate" "SAUHelper" "SecurePay" "SupportServices" "SystemAppUpdateService")
RUI_SYS_PRIV_APP=("HeyTapUserCenter" "HeyTapSpeechService" "HeyTapSpeechAssist" "Browser" "ConfigUpdater" "FindMyPhone" "GlobalSearch" "GmsCore" "GoogleBackupTransport" "GoogleOneTimeInitializer" "GooglePartnerSetup" "GooglePlayServicesUpdater" "GoogleServicesFramework" "OppoBootReg" "OppoMusic" "OppoSpeechAssist" "OppoSpeechService" "SceneService" "seccamservice" "SmartDrive" "SmartLock" "SOSHelper" "VideoGallery")
RUI_SYS_PRODUCT_PRIV_APP=("ConfigUpdater" "GmsCore" "GoogleBackupTransport" "GoogleOneTimeInitializer" "GooglePartnerSetup" "GooglePlayServicesUpdater" "GoogleServicesFramework")
RUI_SYS_PRODUCT_APP=("GoogleContactsSyncAdapter")
RUI_PACKAGES=("com.coloros.assistantscreen" "com.coloros.backuprestore" "com.coloros.backuprestore.remoteservice" "com.baidu.input_oppo" "com.coloros.childrenspace" "com.coloros.cloud" "com.coloros.colordirectservice" "com.coloros.directui" "com.mobiletools.systemhelper" "com.coloros.feedback" "com.coloros.encryption" "com.realme.findphone.client2" "com.coloros.floatassistant" "com.coloros.gamespace" "com.coloros.healthcheck" "com.nearme.instant.platform" "com.oppo.instant.local.service" "com.oppo.market" "com.nearme.atlas" "com.oppo.usercenter" "com.oppo.mimosiso" "com.coloros.ocrscanner" "com.coloros.ocrservice" "com.oppo.aod" "com.oppo.atlas" "com.nearme.statistics.rom" "com.dropboxchmod" "com.coloros.operationManual" "com.coloros.activation" "com.oppo.oppoportaldetect" "com.oppo.postmanservice" "com.coloros.translate.engine" "com.coloros.wallet" "com.coloros.oshare" "com.oppo.ota" "com.oppo.otaui" "com.oppo.ovoicemanager" "com.coloros.pictorial" "com.coloros.remoteguardservice" "com.nearme.romupdate" "com.coloros.sauhelper" "com.coloros.sau" "com.nearme.browser" "com.google.android.configupdater" "com.coloros.findmyphone" "com.oppo.quicksearchbox" "com.nearme.themestore" "com.oppo.music" "com.coloros.speechassist" "com.coloros.speechassist.engine" "com.coloros.sceneservice" "com.coloros.smartdrive" "com.coloros.video")


MIUI_SYS_DATA_APP=("GameCenter" "Huanji" "MiDrive" "MiFinance" "MiShop" "MiuiScanner" "NewHome" "SmartTravel" "Userguide" "VipAccount" "VirtualSim" "XiaoAiSpeechEngine" "MIGalleryLockscreen" "SmartHome" "MIpay" "MIRadio" "MIUIDuokanReader" "MIUIEmail" "MIUIGameCenter" "MIUIHuanji" "MIUINewHome" "MIUINotes" "MIUIVipAccount" "MIUIVirtualSim" "MIUIXiaoAiSpeechEngine" "MIUIYoupin" "ThirdAppAssistant")
MIUI_PACKAGE=("com.miui.contentextension" "com.xiaomi.gamecenter.sdk.service" "com.xiaomi.mircs"  "com.xiaomi.ab"  "com.xiaomi.aiasst.vision"    "com.mipay.wallet" "com.miui.accessibility" "com.miui.voiceassist")

MIUI_SYS_DATA_APP_LITE=("Email" "MIFinance" "MiLiveAssistant" "MIShop" "Youpin" "MIGalleryLockscreen"  "MIUIDuokanReader" "MIUIVipAccount"  "MIUIYoupin" )
MIUI_VENDOR_DATA_APP_LITE=("SmartHome")
MIUI_PACKAGE_LITE=("com.miui.hybrid.accessory" "com.miui.hybrid" "com.miui.systemAdSolution")


MIUI_EU_PACKAGE=("com.xiaomi.macro" "com.miui.nextpay" "com.google.android.setupwizard" "com.google.android.apps.cloudprint" "com.android.backupconfirm" "com.xiaomi.finddevice" "com.miui.huanji" "com.xiaomi.scanner" "com.android.provision"  "com.android.bookmarkprovider" "com.google.android.printservice.recommendation" "com.xiaomi.joyose" "com.miui.newmidrive"  "com.xiaomi.account" )
MIUI_EU_PACKAGE_LITE=("com.mi.globalbrowser"  "com.google.android.googlequicksearchbox" "com.android.browser"  "pl.zdunex25.updater" "com.android.email" "com.mi.health" "com.google.ar.lens" "com.mfashiongallery.emag"  "com.miui.notes")

MIUI_GLOBAL_SYS_DATA_APP=("MiGameCenterGlobal")
MIUI_GLOBAL_PACKAGE=("com.wdstechnology.android.kryten" "com.android.provision" "com.google.android.setupwizard"  "com.android.bookmarkprovider" "com.xiaomi.midrop" "com.mi.healthglobal" "com.miui.notes"  "com.miui.msa.global" )

MIUI_GLOBAL_SYS_DATA_APP_LITE=("MIBrowserGlobal" "MIGalleryLockScreenGlobal")
MIUI_GLOBAL_PACKAGE_LITE=("com.xiaomi.discover" "com.facebook.system" "com.facebook.appmanager" "com.facebook.services" "com.miui.hybrid.accessory" "com.miui.hybrid" "com.xiaomi.mipicks" "com.xiaomi.scanner")

FUNTOUCH_4_PACKAGE=("com.vivo.videoeditor" "com.vivo.collage" "com.vivo.game" "com.vivo.Tips" "com.ibimuyu.lockscreen"  "com.android.skintwo" "com.android.skinthree" "com.android.skinfive" "com.yozo.vivo.office" "com.vivo.email" "com.bbk.VoiceOneshot" "com.bbk.VoiceAssist" "com.vlife.vivo.wallpaper" "com.vivo.space" "com.vivo.assistant" "com.vivo.hiboard" "com.vivo.motionrecognition" "com.bbk.updater" "com.vivo.abe" "com.baidu.duersdk.opensdk" "com.bbk.account" "com.bbk.appstore" "com.bbk.cloud" "com.android.BBKCrontab" "com.android.bbklog" "com.android.bbkmusic" "com.vivo.globalsearch" "com.android.VideoPlayer" "com.vivo.findphone" "com.android.BBKPhoneInstructions")
FUNTOUCH_SYS_APP=( "VoiceOneshot" "VoiceAssist" "VLife_vivo" "vivospace-v2" "VivoAssistant" "HiBoard" "AppBehaviorEngine" "MotionRecognition" "Updater" "BaiduOnlineSpeechService" "BBKAccount" "BBKAppStore" "BBKCloud" "BBKCrontab" "BBKLOG" "BBKMusic" "BBKPhoneInstructions" "BBKVideoPlayer" "FindPhone" "GlobalSearch")
FUNTOUCH_SYS_CUST_PRIV_APP=("Email" "VivoOffice")

MYUI_SYS_PRIV_APP=("LenovoStore" "LSF-Device-Phone" "XuiEasySync" "ZuiBrowser" "ZuiXlog")
MYUI_PRODUCT_PRIV_APP=("MotoDisplayV6" "MotoLeanbackLauncher" "AiServices" "BaiduNetworkLocation" "MotoTour" "MotoHelp" "GameMode" "GmsCore" "GooglePlayServicesUpdater" "GuideMe" "LSF-User-Phone" "MotoAppUIRefresh" "MotoDesktop")
MYUI_SYS_EXT_PRIV_APP=("VoiceTranslation" "MotoFeatureDiscovery" "3c_ota" "MotoTaskBar" "DemoMode" "FindMyPhone" "GbaAppSDK" "MotoThinkUEM" "MyScreen" "GoogleOneTimeInitializer" "GoogleServicesFramework" "HiddenMenu" "LeVoiceAgent" "LeVoiceSTApp" "LifetimeData" "MotCameraDesktop" "MotoDesktopCore")
MYUI_PACKAGE=("com.motorola.aiservices" "com.motorola.cn.voicetranslation" "com.motorola.discovery" "com.motorola.systemui.desk" "com.thinkuem.motolc" "com.cmcc.gbaserver" "com.motorola.myscreen" "com.motorola.demo" "com.google.android.onetimeinitializer" "com.google.android.gsf" "com.lenovo.levoice_agent" "com.motorola.motcameradesktop" "com.motorola.mobiledesktop.core" "com.motorola.lifetimedata" "com.lenovo.levoice_trigger" "com.motorola.hiddenmenuapp" "com.zui.antitheft" "com.motorola.ccc.ota" "com.motorola.leanbacklauncher" "com.motorola.mototour" "com.motorola.motodisplay" "com.motorola.help" "com.baidu.map.location" "com.motorola.gamemode" "com.google.android.gms" "com.motorola.genie" "com.lenovo.lsf" "com.motorola.moto" "com.motorola.mobiledesktop" "com.android.vending" "com.lenovo.leos.appstore" "com.lenovo.lsf.device" "com.lenovo.leos.cloud.sync" "com.zui.browser" "com.zui.xlog")

FLYME9_SYS_APP=("AppCenter" "MzCloudService" "MzPay" "MzPhoneLocationService" "MzSyncService" "MzUpdate")
FLYME9_SYS_PRIV_APP=("AlphaMe" "Assistant" "Browser" "DirectService" "EasyLauncher" "FlymeLab" "FlymeMusic" "MeizuPay" "NativeLockScreen" "Picker" "Search" "Suggestion" "Video" "VoiceAssistant")
FLYME9_SYS_MZAPP=("GameCenter" "GameSDKService" "LockScreenFramework" "mCareNew" "MzStore" "Pedometer")
FLYME9_PACKAGE=("com.meizu.flyme.gamecenter" "com.meizu.gamecenter.service" "com.flyme.meizu.store" "com.meizu.net.pedometer" "com.ibimuyu.lockscreen" "com.meizu.mcare" "com.meizu.alphame" "com.meizu.assistant" "com.android.browser" "com.meizu.flyme.easylauncher" "com.meizu.media.music" "com.meizu.net.nativelockscreen" "com.meizu.media.video" "com.meizu.voiceassistant" "com.meizu.net.search" "com.meizu.suggestion" "com.meizu.picker" "com.meizu.mznfcpay" "com.meizu.flymelab" "com.meizu.flyme.directservice" "com.meizu.mstore" "com.meizu.cloud" "com.meizu.account.pay" "com.meizu.flyme.service.find" "com.meizu.mzsyncservice" "com.meizu.flyme.update")

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
		pm disable $pp
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
		ppapa=$(pm path $pp |cut -d':' -f2)
		pm uninstall --user 0 $pp
		rm -rf "$ppapa"
	done
}

delete_sys_app_core(){
	arr=$1
	for pp in ${arr[*]}
	do
		am force-stop $pp
		pm clear $pp
		ppapa=$(pm path $pp |cut -d':' -f2|xargs dirname)
		pm uninstall --user 0 $pp
		rm -rf "$ppapa"
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

remove_base_gapps(){
	mount_rw_sys
	delete_sys_app_core "${GAPPS_BASE_PACKAGE[*]}"
	mount_ro_sys
}

remove_sys_app_myui(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${MYUI_SYS_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRODUCT_PRIV_APP" "${MYUI_PRODUCT_PRIV_APP[*]}"
	remove_sys_app_core "$SYSTEM_EXT_PRIV_APP" "${MYUI_SYS_EXT_PRIV_APP[*]}"
	rm -rf /system/product/preinstall/*
	uninstall_app_myui
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_sys_app_flyme9(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_APP" "${FLYME9_SYS_APP[*]}"
	remove_sys_app_core "$SYSTEM_PRIV_APP" "${FLYME9_SYS_PRIV_APP[*]}"
	remove_sys_app_core "/system/MzApp" "${FLYME9_SYS_MZAPP[*]}"
	rm -rf /system/product/custom/*
	uninstall_app_flyme9
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
	uninstall_app_rui
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_sys_app_funtouch4(){
	mount_rw_sys
	uninstall_app_funtouch4
	mount_ro_sys
	remove_cust_app
	remove_app_3
}


remove_sys_app_miui_global(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_GLOBAL_SYS_DATA_APP[*]}"
	delete_sys_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
	remove_miui_base
	mount_ro_sys
	remove_base_gapps
	remove_sys_app_miui_eu_lite
}

remove_sys_app_miui_global_lite(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_GLOBAL_SYS_DATA_APP_LITE[*]}"
	delete_sys_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
	remove_miui_base_lite
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_sys_app_miui_eu(){
	mount_rw_sys
	delete_sys_app_core "${MIUI_EU_PACKAGE[*]}"
	remove_miui_base
	uninstall_app_miui_eu
	mount_ro_sys
	remove_base_gapps
	remove_sys_app_miui_eu_lite
}

remove_sys_app_miui_eu_lite(){
	mount_rw_sys
	delete_sys_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
	remove_miui_base_lite
	uninstall_app_miui_eu_lite
	mount_ro_sys
	remove_cust_app
	remove_app_3
}


remove_sys_app_miui(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_SYS_DATA_APP[*]}"
	delete_sys_app_core "${MIUI_PACKAGE[*]}"
	remove_miui_base
	uninstall_app_miui
	mount_ro_sys
	remove_sys_app_miui_lite
}

remove_sys_app_miui_lite(){
	mount_rw_sys
	remove_sys_app_core "$SYSTEM_DATA_APP" "${MIUI_SYS_DATA_APP_LITE[*]}"
	remove_sys_app_core "$SYSTEM_VENDOR_DATA_APP" "${MIUI_VENDOR_DATA_APP_LITE[*]}"
	delete_sys_app_core "${MIUI_PACKAGE_LITE[*]}"
	remove_miui_base_lite
	uninstall_app_miui_lite
	mount_ro_sys
	remove_cust_app
	remove_app_3
}

remove_miui_base(){
	delete_sys_app_core "${MIUI_BASE_PACKAGE[*]}"
}

remove_miui_base_lite(){
	delete_sys_app_core "${MIUI_BASE_PACKAGE_LITE[*]}"
}

disable_app_miui_eu(){
	clear_app_miui_eu
	disable_app_core "${MIUI_EU_PACKAGE[*]}"
}

disable_app_miui_eu_lite(){
	clear_app_miui_eu_lite
	disable_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
}

disable_app_miui_global_lite(){
	clear_app_miui_global_lite
	disable_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

disable_app_miui_global(){
	clear_app_miui_global
	disable_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
}

uninstall_app_miui_eu(){
	clear_app_miui_eu
	uninstall_app_core "${MIUI_EU_PACKAGE[*]}"
}

uninstall_app_miui_eu_lite(){
	clear_app_miui_eu_lite
	uninstall_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
}

uninstall_app_miui_global_lite(){
	clear_app_miui_global_lite
	uninstall_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

uninstall_app_miui_global(){
	clear_app_miui_global
	uninstall_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
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
		if [ "$f" == "com.topjohnwu.magisk" ] || [ "$f" == "bin.mt.plus" ] || [ "$f" == "org.fqaosp" ]
		then
			echo "skip!"
		else
			pm uninstall --user 0 $f
		fi
	done
	echo "remove ok !!!"
}

clear_app_miui_eu(){
	stop_app_miui_eu
	clear_app_core "${MIUI_EU_PACKAGE[*]}"
}

stop_app_miui_eu(){
	stop_app_3
	stop_app_core "${MIUI_EU_PACKAGE[*]}"
}

clear_app_miui_eu_lite(){
	stop_app_miui_eu_lite
	clear_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
}

clear_app_miui_global_lite(){
	stop_app_miui_global_lite
	clear_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

clear_app_miui_global(){
	stop_app_miui_global
	clear_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
}

stop_app_miui_eu_lite(){
	stop_app_3
	stop_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
}

stop_app_miui_global_lite(){
	stop_app_3
	stop_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

stop_app_miui_global(){
	stop_app_3
	stop_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
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
	clear_app_rui
	uninstall_app_core "${RUI_APP_3[*]}"
	uninstall_app_core "${RUI_SYS_APP_PACKAGENAME[*]}"
	uninstall_app_core "${RUI_PACKAGES[*]}"
}

uninstall_app_myui(){
	clear_app_myui
	uninstall_app_core "${MYUI_PACKAGE[*]}"
}

uninstall_app_flyme9(){
	clear_app_flyme9
	uninstall_app_core "${FLYME9_PACKAGE[*]}"
}


uninstall_app_funtouch4(){
	clear_app_funtouch4
	uninstall_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

disable_app_miui(){
	clear_app_miui
	disable_app_core "${MIUI_PACKAGE[*]}"
}

disable_app_miui_lite(){
	clear_app_miui_lite
	disable_app_core "${MIUI_PACKAGE_LITE[*]}"
}

disable_app_myui(){
	clear_app_myui
	disable_app_core "${MYUI_PACKAGE[*]}"
}

disable_app_flyme9(){
	clear_app_flyme9
	disable_app_core "${FLYME9_PACKAGE[*]}"
}

clear_app_myui(){
	stop_app_myui
	clear_app_core "${MYUI_PACKAGE[*]}"
}

clear_app_flyme9(){
	stop_app_flyme9
	clear_app_core "${FLYME9_PACKAGE[*]}"
}

stop_app_flyme9(){
	stop_app_3
	stop_app_core "${FLYME9_PACKAGE[*]}"
}

stop_app_myui(){
	stop_app_3
	stop_app_core "${MYUI_PACKAGE[*]}"
}

clear_app_miui(){
	stop_app_miui
	clear_app_core "${MIUI_PACKAGE[*]}"
}

clear_app_miui_lite(){
	stop_app_miui_lite
	clear_app_core "${MIUI_PACKAGE_LITE[*]}"
}

stop_app_miui(){
	stop_app_3
	stop_app_core "${MIUI_PACKAGE[*]}"
}

stop_app_miui_lite(){
	stop_app_3
	stop_app_core "${MIUI_PACKAGE_LITE[*]}"
}

uninstall_app_miui(){
	clear_app_miui
	uninstall_app_core "${MIUI_PACKAGE[*]}"
}

uninstall_app_miui_lite(){
	clear_app_miui_lite
	uninstall_app_core "${MIUI_PACKAGE_LITE[*]}"
}

remove_app_miui_global(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_global
	else
		disable_app_miui_global
		uninstall_app_miui_global
	fi
}

remove_app_miui_global_lite(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_global_lite
	else
		disable_app_miui_global_lite
		uninstall_app_miui_global_lite
	fi
}

remove_app_miui_eu(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_eu
	else
		disable_app_miui_eu
		uninstall_app_miui_eu
	fi
}

remove_app_miui_eu_lite(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_eu_lite
	else
		disable_app_miui_eu_lite
		uninstall_app_miui_eu_lite
	fi
}

remove_app_funtouch4(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_funtouch4
	else
		disable_app_funtouch4
		uninstall_app_funtouch4
	fi
}

remove_app_miui(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui
	else
		disable_app_miui
		uninstall_app_miui
	fi
}

remove_app_miui_lite(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_miui_lite
	else
		disable_app_miui_lite
		uninstall_app_miui_lite
	fi
}

remove_app_rui(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_rui
	else
		disable_app_rui
		uninstall_app_rui
	fi
	pm clear com.oppo.launcher
}

remove_app_myui(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_myui
	else
		disable_app_myui
		uninstall_app_myui
	fi
}

remove_app_flyme9(){
	if [ "$UID" == "0" ]
	then
		remove_sys_app_flyme9
	else
		disable_app_flyme9
		uninstall_app_flyme9
	fi
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

disable_app_miui_for_cmd(){
	disable_app_core "${MIUI_PACKAGE_LITE[*]}"
	disable_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
	disable_app_core "${MIUI_EU_PACKAGE[*]}"
	disable_app_core "${MIUI_PACKAGE[*]}"
	disable_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
	disable_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

disable_app_myui_for_cmd(){
	disable_app_core "${MYUI_PACKAGE[*]}"
}

disable_app_flyme_for_cmd(){
	disable_app_core "${FLYME9_PACKAGE[*]}"
}

disable_app_color_for_cmd(){
	disable_app_core "${RUI_APP_3[*]}"
	disable_app_core "${RUI_SYS_APP_PACKAGENAME[*]}"
}

disable_app_vivo_for_cmd(){
	disable_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}

stop_app_miui_for_cmd(){
	stop_app_core "${MIUI_PACKAGE_LITE[*]}"
	stop_app_core "${MIUI_EU_PACKAGE_LITE[*]}"
	stop_app_core "${MIUI_EU_PACKAGE[*]}"
	stop_app_core "${MIUI_PACKAGE[*]}"
	stop_app_core "${MIUI_GLOBAL_PACKAGE[*]}"
	stop_app_core "${MIUI_GLOBAL_PACKAGE_LITE[*]}"
}

stop_app_myui_for_cmd(){
	stop_app_core "${MYUI_PACKAGE[*]}"
}

stop_app_flyme_for_cmd(){
	stop_app_core "${FLYME9_PACKAGE[*]}"
}

stop_app_color_for_cmd(){
	stop_app_core "${RUI_APP_3[*]}"
	stop_app_core "${RUI_SYS_APP_PACKAGENAME[*]}"
}

stop_app_vivo_for_cmd(){
	stop_app_core "${FUNTOUCH_4_PACKAGE[*]}"
}


remove_app_menu(){
	echo -ne "1.miui\n2.miui(eu)\n3.miui(global)\n4.color(realmeui)\n5.funtouch4\n6.myui\n7.flyme9\n8.other\n9.miui_lite\n10.miui_eu_lite\n11.miui_global_lite\ninput : "
	read xx
	case $xx in
	1)
		remove_app_miui
		exit 0;;
	2)
		remove_app_miui_eu
		exit 0;;
	3)
		remove_app_miui_global
		exit 0;;
	4)
		remove_app_rui
		exit 0;;
	5)
		remove_app_funtouch4
		exit 0;;
	6)
		remove_app_myui
		exit 0;;
	7)
		remove_app_flyme9
		exit 0;;
	8)
		remove_app_3
		exit 0;;
	9)
		remove_app_miui_lite
		exit 0;;
	10)
		remove_app_miui_eu_lite
		exit 0;;
	11)
		remove_app_miui_global_lite
		exit 0;;
	*)remove_app_menu;;
	esac
}
disable_app_menu(){
	echo -ne "1.miui\n2.color(realmeui)\n3.funtouch4\n4.myui\n5.flyme9\n6.other\n7.miui(eu)\n8.miui_eu_lite\n9.miui_lite\n10.miui_global_lite\ninput : "
	read xx2
	case $xx2 in
	1)
		disable_app_miui
		exit 0;;
	2)
		disable_app_rui
		exit 0;;
	3)
		disable_app_funtouch4
		exit 0;;
	4)
		disable_app_myui
		exit 0;;
	5)
		disable_app_flyme9
		exit 0;;
	6)
		stop_app_3
		exit 0;;
	7)
		disable_app_miui_eu
		exit 0;;
	8)
		disable_app_miui_eu_lite
		exit 0;;
	9)
		disable_app_miui_lite
		exit 0;;
	10)
		disable_app_miui_global_lite
		exit 0;;
	*)stop_app_menu;;
	esac
}

main(){
	clear
	echo "user : [$UID]"
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

case "$OPTS" in
miui)
	case "$OPTS2" in
	r*)
		remove_app_miui
		remove_app_miui_eu
		remove_app_miui_global
		remove_app_miui_eu_lite
		remove_app_miui_lite
		exit 0;;
	d*)
		disable_app_miui_for_cmd
		exit 0;;
	*)
		stop_app_miui_for_cmd
		exit 0;;
	esac
	exit 0
	;;
flyme)
	case "$OPTS2" in
	r*)
		remove_app_flyme9
		exit 0;;
	d*)
		disable_app_flyme_for_cmd
		exit 0;;
	*)
		stop_app_flyme_for_cmd
		exit 0;;
	esac
	exit 0
	;;
color)
	case "$OPTS2" in
	r*)
		remove_app_rui
		exit 0;;
	d*)
		disable_app_color_for_cmd
		exit 0;;
	*)
		stop_app_color_for_cmd
		exit 0;;
	esac
	exit 0
	;;
vivo)
	case "$OPTS2" in
	r*)
		remove_app_funtouch4
		exit 0;;
	d*)
		disable_app_vivo_for_cmd
		exit 0;;
	*)
		stop_app_vivo_for_cmd
		exit 0;;
	esac
	exit 0
	;;
myui)
	case "$OPTS2" in
	r*)
		remove_app_myui
		exit 0;;
	d*)
		disable_app_myui_for_cmd
		exit 0;;
	*)
		stop_app_myui_for_cmd
		exit 0;;
	esac
	exit 0
	;;
*)
	main
	;;
esac
