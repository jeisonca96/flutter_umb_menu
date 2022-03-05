import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../drawer_menu.dart';

class WebViewUmb extends StatefulWidget {
  const WebViewUmb({Key? key, required this.url}) : super(key: key);
  final String url;
  @override
  WebViewUmbState createState() => WebViewUmbState();
}

class WebViewUmbState extends State<WebViewUmb> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Institucional UMB"),
      ),
      drawer: DrawerMenu(),
      body: WebView(
        initialUrl: widget.url,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
