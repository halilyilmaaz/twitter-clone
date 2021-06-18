import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DefaultTabController(
            length: 2,
            child: TabBar(
              labelPadding: EdgeInsets.all(10),
              tabs: [
                Text("Tümü", style: tabBarText),
                Text("Bahsedenler", style: tabBarText),
              ],
            )),
      ],
    );
  }
}

final tabBarText = TextStyle(letterSpacing: 1, fontSize: 20);
