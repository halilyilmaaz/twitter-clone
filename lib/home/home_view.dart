import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/component/drawer.dart';

class HomeView extends StatefulWidget {
  HomeView({this.controller});

  final ScrollController controller;
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int defaultTabLength = 4;
  bool _isHeaderClose = false;
  double lastOffset = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listViewBuilder,
      drawer: DrawerMenu(),
      floatingActionButton: _fabButton,
    );
  }

  Widget get _fabButton =>
      FloatingActionButton(onPressed: () {}, child: Icon(Icons.pending_sharp));

  Widget get _listViewBuilder => ListView.builder(
        controller: widget.controller,
        itemBuilder: (context, index) {
          return _listViewCard;
        },
        itemCount: 10,
      );
  Widget _listCardTitle(String text) => Text(text, style: userTextStyle);

  Widget _listCardContent(String content) => Text(content);

  Widget get _listViewCard => Card(
          child: ListTile(
        leading: CircleAvatar(),
        title: Wrap(
          runSpacing: 10,
          children: [
            _listCardTitle("@username"),
            _listCardContent(
                "contentcontentcontentcontentcontentcontentcontentcontent"),
            _placeHolder,
            _footerButtonRow,
          ],
        ),
      ));
  Widget _iconLabel(String text) => Wrap(
        spacing: 5,
        children: [
          Icon(Icons.mode_comment_outlined,
              color: CupertinoColors.inactiveGray),
          Text(text),
        ],
      );
  Widget _iconLabel1(String text) => Wrap(
        spacing: 5,
        children: [
          Icon(Icons.repeat, color: CupertinoColors.inactiveGray),
          Text(text),
        ],
      );
  Widget _iconLabel2(String text) => Wrap(
        spacing: 5,
        children: [
          Icon(Icons.favorite, color: CupertinoColors.systemRed),
          Text(text),
        ],
      );
  Widget _iconLabel3(String text) => Wrap(
        spacing: 5,
        children: [
          Icon(Icons.share, color: CupertinoColors.inactiveGray),
          Text(text),
        ],
      );
  Widget get _iconLabelButton => InkWell(
        onTap: () {},
        child: _iconLabel("1"),
      );
  Widget get _iconLabelButton1 => InkWell(
        onTap: () {},
        child: _iconLabel1("1"),
      );

  Widget get _iconLabelButton2 => InkWell(
        onTap: () {},
        child: _iconLabel2("1"),
      );
  Widget get _iconLabelButton3 => InkWell(
        onTap: () {},
        child: _iconLabel3("1"),
      );

  Widget get _placeHolder => Container(
        height: 100,
        child: Placeholder(),
      );

  Widget get _footerButtonRow => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _iconLabelButton,
          _iconLabelButton1,
          _iconLabelButton2,
          _iconLabelButton3,
        ],
      );
}

final titleTextStyle = TextStyle(
    letterSpacing: 1,
    color: Colors.blue,
    fontSize: 20,
    fontWeight: FontWeight.w800);

final userTextStyle = TextStyle(
  letterSpacing: 1,
  color: Colors.black,
  fontWeight: FontWeight.w800,
);

final _colorforIcons = Colors.blue;
