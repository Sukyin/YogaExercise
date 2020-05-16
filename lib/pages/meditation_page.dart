import 'package:flutter/material.dart';
import 'package:yoga/models/meditation_list.dart';

class MeditationPage extends StatefulWidget {
  @override
  _MeditationPageState createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Meditation",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: meditations.length,
        itemBuilder: (BuildContext context, int index) {
          Map map = meditations[index];
          return _buildItemWidget(map);
        },
      ),
    );
  }

  Widget _buildItemWidget(Map map) {
    return Container(
      height: 160,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ConstrainedBox(
                  child: Image.network(
                    map["image"],
                    fit: BoxFit.cover,
                  ),
                  constraints: BoxConstraints.expand(),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 20.0,
                child: Text(
                  map["title"],
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 40.0,
                left: 20.0,
                child: Text(
                  map["short_desc"],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                left: 20.0,
                top: 90.0,
                child: Row(
                  children: <Widget>[
                    Image.asset("images/icons/timer_12x12_@2x.png"),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      map["time"],
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
              // Positioned(
              //   left: 20.0,
              //   top: 70.0,
              //   child: Container(
              //     height: 40.0,
              //     child: Row(
              //       children: <Widget>[
              //         Image.asset("images/icons/timer_12x12_@2x.png"),
              //         Text(
              //           map["time"],
              //           style: TextStyle(
              //               fontSize: 13.0,
              //               color: Colors.white,
              //               fontWeight: FontWeight.w600),
              //         ),
              //         Expanded(child: SizedBox()),
              //         Image.asset("images/icons/playbutton_16x16_@2x.png")
              //       ],
              //     ),
              //   ),
              // )
            ],
          )),
    );
  }
}
