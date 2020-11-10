import 'package:flutter/material.dart';
import 'package:flutter_app/pages/tabs/sunHome.dart';
import 'sunHome.dart';

class sunGoodsList extends StatelessWidget{
  final arguments;
  String title;
  int sunCount;
  sunGoodsList({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      //增加返回按钮
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          //路由跳转到某个页面 pop
          Navigator.of(context).pop(
              MaterialPageRoute(
                // ignore: missing_return
                  builder: (context){
                    return sunHome();
                  }
                //页面控件
              )
          );
        },
      ),
      appBar: AppBar(
        title: Text("${arguments!=null ?  arguments['title'] : 0}"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("标题 ${arguments!=null ?  arguments['id'] : 0}"),
          ),
          ListTile(
            title: Text("标题 ${arguments!=null ?  arguments['id'] : 0}"),
          ),
          ListTile(
            title: Text("标题 ${arguments!=null ?  arguments['id'] : 0}"),
          ),
        ],
      ),
    );
  }

}
