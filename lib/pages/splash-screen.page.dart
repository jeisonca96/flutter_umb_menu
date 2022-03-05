import 'package:flutter/material.dart';
import 'package:menu_umb/pages/home.page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 2000),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage(title: 'HomePage',)),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Center(
            child: FractionallySizedBox(
              widthFactor: .6,
              child: Image.asset('assets/logo-umb.png'),
            ),
          ),
          CircularProgressIndicator(),
          Spacer(),
          Text('Ing. Software'),
          Spacer(),
          Text('PROGRAMACIÓN EN PLATAFORMAS MÓVILES II'),
          Spacer(),
          Text('Jeison Aparicio'),
          Text('2022'),
          Spacer(),
        ],
      )),
    );
  }
}
