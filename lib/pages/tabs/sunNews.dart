import 'package:flutter/material.dart';

class sunNews extends StatefulWidget{
  Map arguments;
  sunNews({Key key,this.arguments}) : super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunNewsSon(arguments:this.arguments);
  }
}

class sunNewsSon extends State{
  Map arguments;
  sunNewsSon({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      //appBar 导航
      appBar: AppBar(
        title: Text(
            "新闻 ${arguments!=null ?  arguments['id'] : 0} "
        ),
      ),
      //body 主体
      body: Container(
        child: Text("新闻列表"),
      ),
    );
  }

}