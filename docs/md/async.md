# 异步处理

widget中处理异步

> 从网络获取数据

``` dart

class Demo extends StatefulWidget {

}
class _Demo extends State<Demo> {
    String text;

    Future<void> xhr() async {
        String res = await http.get('www.baidu.com');

        <!-- 只有挂载完成之后才能调用setState -->
        if (!mounted) return;
        setState(() {
            text = '$res';
        });

    }

    initState(){
        super.initState();
        <!-- initState方法不支持异步调用 所以在这用不了await -->
        this.xhr()
    }
    build(){
        Widget ret;

        ret = Text("$text")

        return ret;
    }
}

```