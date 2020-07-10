# 形状

``` dart

class Shape extends StatelessWidget {
  const Shape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.grey,
        // shape: Border.all(
        //     color: Color(0xFF00FFFF), style: BorderStyle.solid, width: 2)
// 四个边分别指定颜色和宽度， 当只给bottom时与UnderlineInputBorder一致效果
//          shape: Border(top: b, bottom: b, right: b, left: b)
// 底部线
//          shape: UnderlineInputBorder( borderSide:BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
// 矩形边色
//        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
// 圆形边色
//        shape: CircleBorder(side: BorderSide(color: Color(0xFFFFFF00), style: BorderStyle.solid, width: 2))
// 体育场（竖向椭圆）
        shape: StadiumBorder(
            side: BorderSide(
                width: 2, style: BorderStyle.solid, color: Color(0xFF00FFFF))),
// 角形（八边角）边色
//          shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(color: Color(0xFFFFFFFF), style: BorderStyle.solid, width: 2))
      ),
      child: Text("形状"),
    );
  }
}

```