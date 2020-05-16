import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 260,
                      child: Image.asset(
                        "images/background/navbg1_621x450_@2x.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 100, 0, 0),
                      child: Text(
                        "Training",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 150, 0, 0),
                      child: Text(
                        "Explore the program",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(45, 180, 0, 0),
                      child: Text(
                        "that matches you",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(40, 10, 10, 0),
                          child: Text("Yoga List"),
                        ),
                        Container(
                            height: 220,
                            padding: EdgeInsets.fromLTRB(40, 10, 30, 0),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(60),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: ConstrainedBox(
                                      child: Image.asset(
                                        "images/yoga.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                      constraints: BoxConstraints.expand(),
                                    )),
                                Positioned(
                                  left: 20.0,
                                  top: 20.0,
                                  child: Text(
                                    "Yoga List",
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  bottom: 20.0,
                                  child: Text(
                                    "Tap to explore",
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.white),
                                  ),
                                )
                              ],
                            )),
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.fromLTRB(40, 10, 10, 0),
                          child: Text("Yoga Workout"),
                        ),
                        Container(
                            height: 220,
                            padding: EdgeInsets.fromLTRB(40, 10, 30, 0),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(60),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: ConstrainedBox(
                                      child: Image.asset(
                                        "images/workout.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                      constraints: BoxConstraints.expand(),
                                    )),
                                Positioned(
                                  left: 20.0,
                                  top: 20.0,
                                  child: Text(
                                    "Yoga Workout",
                                    style: TextStyle(
                                        fontSize: 22.0, color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  bottom: 20.0,
                                  child: Text(
                                    "Tap to explore",
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.white),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
