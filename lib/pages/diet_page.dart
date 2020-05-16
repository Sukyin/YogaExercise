import 'package:flutter/material.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Diet",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color.fromRGBO(244, 244, 244, 1.0)),
        child: GridView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          primary: false,

          padding: EdgeInsets.all(10),
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1

              // childAspectRatio: 200 / 200,
              ),
          itemBuilder: (BuildContext context, int index) {
            bool isCompleted = false;
            if (index == 5) {
              isCompleted = true;
            }
            return InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      color: isCompleted
                          ? Color.fromRGBO(81, 100, 219, 1.0)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        // color: Colors.red,
                        height: 80,
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              isCompleted
                                  ? 'images/icons/check-diet_64x64_@2x.png'
                                  : 'images/icons/uncheck-diet_64x64_@2x.png',
                              height: 30,
                              width: 30,
                              color:
                                  isCompleted ? Colors.white : Colors.black45,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Day " + "$index",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: isCompleted
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Offstage(
                              offstage: !isCompleted,
                              child: Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2)),
                                    color: Colors.white),
                                child: Text(
                                  "COMPLETED",
                                  style: TextStyle(fontSize: 10.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))),
            );
          },
        ),
      ),
    );
  }
}
