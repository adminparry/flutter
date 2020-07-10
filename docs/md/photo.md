# 图片和资源

> pubspec.yaml

``` yaml
flutter:
  uses-material-design: true
  assets:
  - assets/images/background.png
  - assets/images/ali_connors_sml.png
  - assets/images/guide1.png
  - assets/images/guide2.png
  - assets/images/guide3.png
  - assets/images/guide4.png
  - assets/images/ic_launcher_news.png
  - assets/images/icon_wan_android.png
  - assets/images/qrcode.png
  - assets/images/splash_bg.png
```

``` dart
Widget build(BuildContext context) {
  // ...
  return new DecoratedBox(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage('graphics/background.png'),
        // ...
      ),
      // ...
    ),
  );
  // ...
}
```