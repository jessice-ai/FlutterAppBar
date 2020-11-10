import 'package:flutter/material.dart';
import 'package:flutter_app/pages/tabs/sunGoodsList.dart';
import 'sunGoodsList.dart';
class sunRegisterSuccessReturn extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunRegisterSuccessReturnSon();
  }

}
class sunRegisterSuccessReturnSon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("返回根"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          RaisedButton(
            child: Text("返回指定的根页面"),
            onPressed: (){
              //命名路由跳转到某个页面
              Navigator.pushNamed(context, '/sunRegisterSuccessReturn');
              //销毁之前所有的跳转记录，直接返回指定的页面
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new sunGoodsList()), (route)=> route == null);
            },
            color: Theme.of(context).accentColor, //颜色主题
            textTheme: ButtonTextTheme.primary, //文本主题
          ),

        ],
      ),
    );
  }

}