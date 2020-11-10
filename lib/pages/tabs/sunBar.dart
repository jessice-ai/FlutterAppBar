import 'package:flutter/material.dart';

// ignore: camel_case_types
class sunBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunBarSon();
  }

}

// ignore: camel_case_types
class sunBarSon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        //1、TitleBar 导航背景颜色
        backgroundColor: Colors.blueAccent,
        //2、TitleBar 前指定图标，图标没法点击，加上默认返回按钮消失
        //leading: Icon(Icons.list,color: Colors.white,),
        //3、TitleBar 前指定图标，图标可点击，加上默认返回按钮消失
        leading: IconButton(
          icon: Icon(Icons.list,color: Colors.white,),
          onPressed: (){
            print("你点击了功能菜单");
          },
        ),
        //4、TitleBar 后边添加图标
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,color: Colors.white,),
            onPressed: (){
              print("你点击了搜索按钮");
            },
          ),
        ],
        //5、文本居中
        centerTitle: true,
        title: Text("aaa"),

      ),
      body: Text("aaa"),
    );
  }

}