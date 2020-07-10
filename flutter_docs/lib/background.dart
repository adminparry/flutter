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
            child: Background(),
          ),
        ),
      ),
    );
  }
}

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
