import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  bool isOpen = false;
  final List sptData = [
    {"icon": "images/icons/feedback_64x64_@2x.png", "title": "Feedback"},
    {"icon": "images/icons/rating_64x64_@2x.png", "title": "Rate"},
    {"icon": "images/icons/share_64x64_@2x.png", "title": "Share"},
    {"icon": "images/icons/privacy_64x64_@2x.png", "title": "Privacy Policy"}
  ];
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(81, 100, 219, 1.0),
        title: Text(
          "More",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildGroupWidget("Settings"),
            _buildSettingsWidget(),
            _buildGroupWidget("Support"),
            _buildSupportsWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildGroupWidget(String title) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 20.0),
      height: 50,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSupportsWidget() {
    log(sptData.length.toString());
    return Container(
      height: 50.0 * sptData.length,
      padding: EdgeInsets.zero,
      child: ListView.builder(
        itemCount: sptData.length,
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        reverse: true,
        itemBuilder: (BuildContext context, int index) {
          Map item = sptData[index];

          return Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10.0),
            height: 50.0,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5.0),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(81, 100, 219, 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Image.asset(
                    item['icon'],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(item['title']),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSettingsWidget() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 50,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color.fromRGBO(81, 100, 219, 1.0),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Image.asset(
              "images/icons/rating_64x64_@2x.png",
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("Reset b/w yoga"),
          Expanded(
            child: SizedBox(),
          ),
          CupertinoSwitch(
            activeColor: Color.fromRGBO(81, 100, 219, 1.0),
            value: isOpen,
            onChanged: (bool value) {
              setState(() {
                this.isOpen = value;
              });
            },
          )
        ],
      ),
    );
  }
}
