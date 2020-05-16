import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // color: Colors.white,
            child: Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          color: Color.fromRGBO(81, 100, 219, 1.0),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[],
            ),
          ),
        )
      ],
    )));
  }

  Widget _buildGroupWidget(String title) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 30.0),
      height: 60,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
