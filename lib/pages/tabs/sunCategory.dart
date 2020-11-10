import 'package:flutter/material.dart';

class sunCategory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return sunCategorySon();
  }

}

class sunCategorySon extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(text: "热销",),
                      Tab(text: "推荐",),
                      Tab(text: "热门",),
                    ],
                  ),
                )
              ],
            ),
            // bottom: TabBar(
            //   tabs: <Widget>[
            //     Tab(text: "热销",),
            //     Tab(text: "推荐",),
            //     Tab(text: "热门",),
            //   ],
            // ),
          ),
          body: TabBarView(

            children: <Widget>[
              ListView(
                children: [
                  ListTile(
                    title: Text("列表1"),
                  ),
                  ListTile(
                    title: Text("列表1"),
                  ),
                  ListTile(
                    title: Text("列表1"),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("列表2"),
                  ),
                  ListTile(
                    title: Text("列表2"),
                  ),
                  ListTile(
                    title: Text("列表2"),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("列表3"),
                  ),
                  ListTile(
                    title: Text("列表3"),
                  ),
                  ListTile(
                    title: Text("列表3"),
                  )
                ],
              )
            ],
          ),
        )
    );
  }

}