# 状态组件

> StatelessWidget

无状态的组件是不能动态修改状态的组件

``` dart
class Meeting extends StatelessWidget {
    <!-- 实现方法可以用快捷键 ctrl + o 主要去实现个build 方法-->
    @override
    Widget build(BuildContext context) {
        <!-- 返回widget -->
        Widget ret;

        return ret;
    }
}
```
> StatefulWidget

有状态的组件是能动态修改状态的组件 通过setState方法进行

``` dart
class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
```

> state的生命周期

initState 插入渲染树时调用，只调用一次

didChangeDependencies state依赖的对象发生变化时调用

didUpdateWidget 组件状态改变时候调用，可能会调用多次

build 构建Widget时调用

deactivate 当移除渲染树的时候调用

dispose 组件即将销毁时调用