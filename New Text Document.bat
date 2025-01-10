adb shell setprop ro.product.device 60346b1a77f674510efbe5216b1b1b417657
adb -P 5037 fork-server server
adb shell content insert --uri content://settings/secure --bind name:s:android_id --bind value:s:62366b1a77f674510efbe5216b1b1b4118698
adb shell settings put secure android_id 63256b1a77f674510efbe5216b1b1b4113993
adb shell rm -rf /sdcard/Android/.system_android_l2
adb shell setprop ro.product.device %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.product.device 64756b1a77f674510efbe5216b1b1b4116899
adb shell setprop ro.product.brand %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.product.brand 67926b1a77f674510efbe5216b1b1b4110919
adb shell setprop ro.product.model %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.product.model 68866b1a77f674510efbe5216b1b1b4127711
adb shell setprop ro.product.name %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.product.name 69846b1a77f674510efbe5216b1b1b4122483
adb shell setprop ro.product.manufacturer %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.product.manufacturer 70796b1a77f674510efbe5216b1b1b416507
adb shell setprop ro.android_id %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.android_id 71516b1a77f674510efbe5216b1b1b4113596
adb shell setprop net.hostname %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop net.hostname 72196b1a77f674510efbe5216b1b1b419936
adb shell setprop gaid %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop gaid 73016b1a77f674510efbe5216b1b1b4116502
adb shell setprop android.device.id %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop android.device.id 73926b1a77f674510efbe5216b1b1b4122546
adb shell setprop ro.serialno %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.serialno 74906b1a77f674510efbe5216b1b1b4117318
adb shell setprop ro.runtime.firstboot %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.runtime.firstboot 75596b1a77f674510efbe5216b1b1b4113658
adb shell setprop ro.mac_address %random%6b1a77f674510efbe5216b1b1b41%random%
adb shell setprop ro.mac_address 76446b1a77f674510efbe5216b1b1b4130973
adb shell rm -rf /data/data/com.tencent.ig/cache/*
adb shell rm -rf /data/data/com.tencent.ig/cache/*
adb shell rm -rf /data/data/com.tencent.ig/code_cache/*
adb shell rm -rf /data/data/com.tencent.ig/shared_prefs/*
adb shell rm -rf /data/data/com.tencent.ig/databases/*
adb shell rm -rf /data/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/cache/*
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/.system_android_l2
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*.json
adb shell chmod 000 /proc/{{cpuinfo,meminfo}} /system/build.prop /sys/devices/system/cpu/cpu0/cpufreq/{{cpuinfo_min_freq,cpuinfo_max_freq}} /sys/class/power_supply/battery/capacity
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/{cache,files/{.fff,ca-bundle.pem,login-identifier.txt,.system_android_l2}}
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/{UE4Game/ShadowTrackerExtra/Epic Games,TGPA}
adb shell rm -rf /sdcard/Android/.system_android_12
adb shell rm -rf /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb shell touch /sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
adb kill-server
adb.exe  start-server
adb -P 5037 fork-server server
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



