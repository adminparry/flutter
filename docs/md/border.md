# 边框及圆角

> border

``` dart
class Style extends StatelessWidget {
  const Style({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              width: 1.0, style: BorderStyle.solid, color: Colors.red)),
      child: Text('边框'),
    );
  }
}
```