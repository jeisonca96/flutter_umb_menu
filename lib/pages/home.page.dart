import 'package:flutter/material.dart';
import 'package:menu_umb/pages/web-view.page.dart';

import '../drawer_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewUmb(url: 'https://umb.edu.co'),
      drawer: DrawerMenu(),
    );
  }
}
