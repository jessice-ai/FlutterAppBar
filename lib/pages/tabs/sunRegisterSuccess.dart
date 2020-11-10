import 'package:flutter/material.dart';
class sunRegisterSuccess extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunRegisterSuccessSon();
  }

}
class sunRegisterSuccessSon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("注册成功"),
      ),
      body: Column(
        children: [

          SizedBox(height: 10,),
          RaisedButton(
            child: Text("返回"),
            onPressed: (){
              //命名路由跳转到某个页面
              //Navigator.pushNamed(context, '/sunRegister');

            },
            color: Theme.of(context).accentColor, //颜色主题
            textTheme: ButtonTextTheme.primary, //文本主题
          ),

        ],
      ),
    );
  }

}