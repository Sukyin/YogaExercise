import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child:
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Image.asset(
                "images/background/navbg1_621x450_@2x.png",
                fit: BoxFit.fill,
              ),
            ),
           
          ],
        ),

      ),
    );
  }
}
