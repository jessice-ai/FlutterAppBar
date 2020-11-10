import 'package:flutter/material.dart';
import 'sunGoodsList.dart';
class sunHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunHomeSon();
  }

}

class sunHomeSon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //横轴
      mainAxisAlignment: MainAxisAlignment.center,  //纵轴
      children: <Widget>[
        //按钮一
        RaisedButton(
          child: Text("跳转到宝贝页面"),
          onPressed: (){
            //命名路由跳转到某个页面
            Navigator.pushNamed(context, '/goods',arguments:{
              "id":123,
              "title":"商品标题"
            });
          },
          color: Theme.of(context).accentColor, //颜色主题
          textTheme: ButtonTextTheme.primary, //文本主题
        ),
        // SizedBox(height: 20.0,),
        // RaisedButton(
        //   child: Text("跳转到宝贝页面"),
        //   onPressed: (){
        //     //基本路由跳转到某个页面
        //     Navigator.of(context).push(
        //         MaterialPageRoute(
        //           // ignore: missing_return
        //             builder: (context){
        //               return sunGoodsList(sunCount: 55,titlet: "aaa",);
        //             }
        //           //页面控件
        //         )
        //     );
        //   },
        //   color: Theme.of(context).accentColor, //颜色主题
        //   textTheme: ButtonTextTheme.primary, //文本主题
        //
        // )
      ],
    );
  }

}