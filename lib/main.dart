import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/tabs/sunFooterTabsContent.dart';
import 'pages/tabs/sunGoodsList.dart';
import 'pages/tabs/sunCategory.dart';
import 'pages/tabs/sunMy.dart';


void main() {
  runApp(sunApp());
}

/**
 * 自定义 Widget 组件
 * StatelessWidget 状态不可改变组件，抽象类，需要实现build方法
 * StatefulWidget 状态可改变组件
 */
class sunApp extends StatelessWidget {
  // 命名路由需定义在 MaterialApp 中，接收的数据是Map类型，跟别名差不多，比如 加载名字为 sunGoodsList 的路由就是加载后面对应的控件
  final routes = {
    "/goods":(context,{arguments})=>sunGoodsList(arguments:arguments),
    "/category":(context)=>sunCategory(),
    "/my":(context)=>sunMy(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

    /**
     *  一般我们会使用 MaterialApp() 作为Flutter的一个根组件使用
     *  常用属性：
     *  home 主页
     *  title 标题
     *  color 颜色
     *  theme 主题
     *  routes 命名路由
     *  onGenerateRoute 命名路由传递参数
     */
    return MaterialApp(
      home: sunFooterTabsContent(),
      //theme 主体
      theme: ThemeData(primarySwatch: Colors.amber),//修改主体颜色
      /**
       * onGenerateRoute 命名路由传递参数，一下代码是固定写法，直接拷贝即可
       */
      // ignore: missing_return
      onGenerateRoute: (RouteSettings settings){
        //统一处理
        final String name=settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder!=null){
          if(settings.arguments != null){
            final Route route=MaterialPageRoute(
              builder: (context) =>
              pageContentBuilder(context,arguments:settings.arguments));
              return route;
          }else{
            final Route route=MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context));
            return route;
          }
        }
      },
    );
  }
}

