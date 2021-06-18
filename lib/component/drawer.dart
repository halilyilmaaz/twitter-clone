import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            child: Text("Header"),
          ),
          Divider(height: 5, color: CupertinoColors.black),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Listeler"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.my_library_books),
            title: Text("Konular"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text("Yer İşaretleri"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.flash_on),
            title: Text("Anlar"),
            onTap: () {},
          ),
          Divider(height: 5, color: CupertinoColors.black),
          ListTile(
            title: Text("Twitter Reklamları"),
            onTap: () {},
          ),
          Divider(height: 5, color: CupertinoColors.black),
          ListTile(
            title: Text("Ayarlar ve Gizlilik"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Yardım Merkezi"),
            onTap: () {},
          ),
          Divider(height: 5, color: CupertinoColors.black),
          ListTile(
            title: Text("Theme"),
            leading: Icon(Icons.lightbulb, color: CupertinoColors.activeBlue),
          ),
        ],
      ),
    );
  }
}
