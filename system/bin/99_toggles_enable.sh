#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
 	then
 	/system/xbin/sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;Location;MobileData;SilentMode;Tomato;AutoRotate;Bluetooth;PowerSaving;TorchLight;AirplaneMode;DormantMode;UltraPowerSaving;WiFiHotspot;SmartStay;PersonalMode;AllShareCast;Nfc;Sync;MultiWindow;FloatingMessage;SFinder;QuickConnect;SideKey;NetworkBooster;TouchSensitivity;' where name='notification_panel_active_app_list'";
fi
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
	then
	/system/xbin/sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;Location;MobileData;SilentMode;AutoRotate;Bluetooth;PowerSaving;TorchLight;AirplaneMode;DormantMode;UltraPowerSaving;WiFiHotspot;SmartStay;PersonalMode;AllShareCast;Nfc;Sync;MultiWindow;FloatingMessage;SFinder;QuickConnect;SideKey;NetworkBooster;TouchSensitivity;' where name='notification_panel_active_app_list_for_reset'";
fi
if [ -e /data/data/com.android.providers.settings/databases/settings.db ]; 
 	then
	/system/xbin/sqlite3 /data/data/com.android.providers.settings/databases/settings.db "update system set value='Wifi;Location;MobileData;SilentMode;AutoRotate;Bluetooth;PowerSaving;TorchLight;AirplaneMode;DormantMode;UltraPowerSaving;WiFiHotspot;SmartStay;PersonalMode;AllShareCast;Nfc;Sync;MultiWindow;FloatingMessage;SFinder;QuickConnect;SideKey;NetworkBooster;TouchSensitivity;' where name='notification_panel_default_active_app_list'";
fi;

pkill -TERM -f com.android.systemui
