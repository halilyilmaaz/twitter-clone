import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/home/tabbar_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData.light().copyWith(
            appBarTheme:
                AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor),
            tabBarTheme: TabBarTheme(
                labelColor: CupertinoColors.activeBlue,
                unselectedLabelColor: CupertinoColors.systemGrey4),
            iconTheme: IconThemeData(color: Colors.blue)),
        home: TwitterTabbarView());
  }
}
