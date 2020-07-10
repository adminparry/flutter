import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: ShadowAndGrad(),
          ),
        ),
      ),
    );
  }
}

class ShadowAndGrad extends StatelessWidget {
  const ShadowAndGrad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Colors.amberAccent,
            Colors.lightBlue,
            Colors.red
          ]),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.green,
                offset: Offset(0.0, 15.0), //阴影xy轴偏移量
                blurRadius: 15.0, //阴影模糊程度
                spreadRadius: 1.0 //阴影扩散程度
                ),
            BoxShadow(
                color: Colors.pink,
                offset: Offset(0.0, 5.0), //阴影xy轴偏移量
                blurRadius: 15.0, //阴影模糊程度
                spreadRadius: 1.0 //阴影扩散程度
                ),
          ]),
      child: Text("阴影及渐变"),
    );
  }
}
