# 对话框

> android
``` dart
RaisedButton(
  child: Text('切换'),
  onPressed: () {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('确认删除吗？'),
            actions: <Widget>[
              FlatButton(child: Text('取消'),onPressed: (){},),
              FlatButton(child: Text('确认'),onPressed: (){},),
            ],
          );
        });
  },
)
```
> ios风格

``` dart

RaisedButton(
  child: Text('切换'),
  onPressed: () {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('提示'),
            content: Text('确认删除吗？'),
            actions: <Widget>[
              CupertinoDialogAction(child: Text('取消'),onPressed: (){},),
              CupertinoDialogAction(child: Text('确认'),onPressed: (){},),
            ],
          );
        });
  },
)

```