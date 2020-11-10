import 'package:flutter/material.dart';
class sunRegister extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunRegisterSon();
  }

}
class sunRegisterSon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("注册页面"),
      ),
      body: Column(
        children: [
          Text("请输入手机号"),
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("提交"),
            onPressed: (){
              //命名路由跳转到某个页面
              //Navigator.pushNamed(context, '/sunRegisterSuccess');

              //路由替换，注册成功之后，不再返回之前页面，点击返回直接进入首页
              Navigator.of(context).pushReplacementNamed('/sunRegisterSuccess');
            },
            color: Theme.of(context).accentColor, //颜色主题
            textTheme: ButtonTextTheme.primary, //文本主题
          ),

        ],
      ),
    );
  }

}