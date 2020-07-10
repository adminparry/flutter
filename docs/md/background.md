# 背景颜色及图片

> background

``` dart
class Background extends StatelessWidget {
  const Background({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
              image: AssetImage("assets/ic_launcher.png"), fit: BoxFit.cover)),
      child: Text('背景颜色及图片'),
    );
  }
}

```

> 本地图片添加

``` yaml
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true
  assets:
    - assets/ic_launcher.png
```