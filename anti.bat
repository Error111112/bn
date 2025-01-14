adb shell setprop ro.product.device 60346b1a77f674510efbe5216b1b1b417657
adb -P 5037 fork-server server
adb  shell touch /dev/GL
Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceManufacturer /t REG_SZ /d samsung /f
Reg.exe  add HKCU\Software\Tencent\MobileGamePC /v VMDeviceModel /t REG_SZ /d SM-5731 /f
adb  shell rm -rf /sdcard/tencent
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/cache
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/TGPA
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Content
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LobbyBubble
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Lobby
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Login
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Cached.sav
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileListAddtional.json
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo
adb shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/StatEventReportedFlag
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/MMKV
adb  shell rm -rf /storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb shell rm -rf /data/data/com.tencent.ig/cache
adb  shell rm -rf /data/data/com.tencent.ig/code_cache
adb  shell rm -rf /data/data/com.tencent.ig/files/*
adb  shell rm -rf /data/data/com.tencent.ig/no_backup
adb  shell rm -rf /sdcard/Android/.system_android_12
adb  shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /data/share1/hardware_info.txt
adb shell rm -rf /data/share1/pictures
adb shell rm -rf touch /etc/pc.log
adb  shell rm -rf setprop config.disable_serial 2
adb  shell pm disable-user --user 0 com.android.vending
 adb shell rm -rf /data/data/com.tencent.ig/databases
adb shell rm -rf touch /etc/pc.log
adb.exe  shell am force-stop com.tencent.ig
adb shell mkdir -p /data/data/com.tencent.ig/files/ano_tmp
adb push C:\Windows\Fonts\fake_file_1 /data/data/com.tencent.ig/files/ano_tmp/fake_file_1
adb push C:\Windows\Fonts\random_file_2 /data/data/com.tencent.ig/files/ano_tmp/random_file_2
adb push C:\Windows\Fonts\example_file_3 /data/data/com.tencent.ig/files/ano_tmp/example_file_3
adb push C:\Windows\Fonts\temporary_file_4 /data/data/com.tencent.ig/files/ano_tmp/temporary_file_4
adb push C:\Windows\Fonts\dummy_file_5 /data/data/com.tencent.ig/files/ano_tmp/dummy_file_5
adb push C:\Windows\Fonts\test_file_6 /data/data/com.tencent.ig/files/ano_tmp/test_file_6
adb push C:\Windows\Fonts\another_file_7 /data/data/com.tencent.ig/files/ano_tmp/another_file_7
adb push C:\Windows\Fonts\sample_file_8 /data/data/com.tencent.ig/files/ano_tmp/sample_file_8
adb push C:\Windows\Fonts\empty_file_9 /data/data/com.tencent.ig/files/ano_tmp/empty_file_9
adb push C:\Windows\Fonts\mystery_file_10 /data/data/com.tencent.ig/files/ano_tmp/mystery_file_10
adb push C:\Windows\Fonts\random_name_123 /data/data/com.tencent.ig/files/ano_tmp/ano_emu_c2.dat
adb shell monkey -p com.tencent.ig -c android.intent.category.LAUNCHER 1



