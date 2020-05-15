import 'package:flutter/material.dart';
import 'package:yoga/pages/index_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends  StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: Constants.appName,
      // theme: Constants.lightTheme,
      // darkTheme: Constants.darkTheme,
      home: IndexPage(),
    );
  }
}

