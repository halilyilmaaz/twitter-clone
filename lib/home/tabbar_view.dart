import 'package:flutter/material.dart';
import 'package:twitter_clone/component/drawer.dart';
import 'package:twitter_clone/home/home_view.dart';
import 'package:twitter_clone/home/notification.dart';
import 'package:twitter_clone/home/search_view.dart';

class TwitterTabbarView extends StatefulWidget {
  TwitterTabbarView({Key key});

  @override
  _TwitterTabbarViewState createState() => _TwitterTabbarViewState();
}

class _TwitterTabbarViewState extends State<TwitterTabbarView> {
  bool _isHeaderClose = false;
  double lastOffset = 0;
  ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.offset <= 0) {
        _isHeaderClose = false;
      } else if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        _isHeaderClose = true;
      } else {
        _isHeaderClose = scrollController.offset > lastOffset ? true : false;
      }

      setState(() {
        lastOffset = scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton: _fabButton,
          bottomNavigationBar: BottomAppBar(
            child: _tabBar,
          ),
          body: Column(
            children: [
              _containerAppBar,

              // tabbarview altına gelecek sayfaları ister
              Expanded(
                child: TabBarView(children: <Widget>[
                  HomeView(controller: scrollController),
                  SearchView(),
                  NotificationPage(),
                  Text("deneme"),
                ]),
              ),
            ],
          ),
          drawer: DrawerMenu(),
        ));
  }

  Widget get _fabButton => FloatingActionButton(
      onPressed: () {}, child: Icon(Icons.person_add_sharp));

  Widget get _appBar => AppBar(
        elevation: 0,
        actions: [Icon(Icons.star, color: Colors.blue)],
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text("Home", style: titleTextStyle),
        centerTitle: true,
      );
  Widget get _containerAppBar => AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: _isHeaderClose ? 0 : 80,
        child: _appBar,
      );
  Widget get _tabBar => TabBar(tabs: [
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.search),
        ),
        Tab(
          icon: Icon(Icons.notifications),
        ),
        Tab(
          icon: Icon(Icons.message_sharp),
        ),
      ]);
}

final titleTextStyle = TextStyle(
    letterSpacing: 1,
    color: Colors.blue,
    fontSize: 20,
    fontWeight: FontWeight.w800);
