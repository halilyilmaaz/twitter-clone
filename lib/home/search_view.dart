import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  SearchView({Key key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _downIconWidget,
        _cardImg,
      ],
    );
  }

  Widget get _downIconWidget =>
      Container(child: Icon(Icons.arrow_downward, color: Colors.grey));

  Widget get _cardImg => Card(
        child: Container(
          height: 150,
          child: Placeholder(),
        ),
      );
}
