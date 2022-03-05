import 'package:flutter/material.dart';
import 'package:menu_umb/pages/messages.page.dart';
import 'package:menu_umb/pages/splash-screen.page.dart';
import 'package:menu_umb/pages/web-view.page.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          Divider(),
          _buildDrawerItem(
              icon: Icons.web,
              text: 'Página Institucional UMB',
              onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => WebViewUmb(url: 'https://umb.edu.co')),
                    ),
                  }),
          _buildDrawerItem(
              icon: Icons.web,
              text: 'Mensajes',
              onTap: () => {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MessagesPage()),
                    ),
                  }),
        ],
      ),
    );
  }
}

Widget _buildDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('assets/logo-umb.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Text("UMB APP",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500))),
      ]));
}

Widget _buildDrawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
