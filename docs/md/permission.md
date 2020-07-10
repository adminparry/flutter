# 权限配置

> android\app\src\main\AndroidManifest.xml

在manifest中添加权限

``` xml
 <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.RECORD_AUDIO"/>
    <uses-permission android:name="android.permission.WRITE_SMS"/>
    <uses-permission android:name="android.permission.WRITE_CALENDAR"/>
    <uses-permission android:name="android.permission.CAMERA"/>
    <uses-permission android:name="android.permission.READ_CONTACTS"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"/>
    <uses-permission android:name="android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"/>

```

> pubspec.yaml中添加插件

``` yaml
permission_handler: ^5.0.1+1
```

> 在你的应用程序中去调用权限允许对话框

``` dart
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
//检查权限和请求权限

  bool status = false;
  Future<Map<Permission, PermissionStatus>> checkPermission() async {

    this.status = true;

    print(this.status);
    Map<Permission, PermissionStatus> ret = await Permission.values.where((Permission permission) {
      if (Platform.isIOS) {
        return permission != Permission.unknown &&
            permission != Permission.sms &&
            //permission != Permission.storage &&
            permission != Permission.ignoreBatteryOptimizations &&
            permission != Permission.accessMediaLocation;
      } else {
        return permission != Permission.unknown &&
            permission != Permission.mediaLibrary &&
            permission != Permission.photos &&
            permission != Permission.reminders;
      }
    }).toList().request();

    status = false;

    return ret;
  }

}

class _Demo extends State<Demo> {
    PermissionUtil pu = PermissionUtil();

    @override
    void initState() {
        super.initState();
        pu.checkPermission();
    }
}
```
