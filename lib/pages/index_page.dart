import 'package:flutter/material.dart';
import 'package:yoga/pages/diet_page.dart';
import 'package:yoga/pages/home_page.dart';
import 'package:yoga/pages/meditation_page.dart';
import 'package:yoga/pages/more_page.dart';
import 'package:yoga/pages/report_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  PageController _pageController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          HomePage(),
          MeditationPage(),
          DietPage(),
          ReportPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          // Theme.of(context).accentColor
          primaryColor: Colors.purple,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.grey[500]),
              ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar/yoga_25x25_@2x.png",
                height: 25.0,
                width: 25.0,
                color: _currentIndex == 0
                    ? Color.fromRGBO(81, 100, 219, 1.0)
                    : Colors.black38,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar/meditation_25x23_@2x.png",
                height: 25.0,
                width: 23.0,
                color: _currentIndex == 1
                    ? Color.fromRGBO(81, 100, 219, 1.0)
                    : Colors.black38,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar/diet_25x25_@2x.png",
                height: 25.0,
                width: 25.0,
                color: _currentIndex == 2
                    ? Color.fromRGBO(81, 100, 219, 1.0)
                    : Colors.black38,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar/report_25x25_@2x.png",
                height: 25.0,
                width: 25.0,
                color: _currentIndex == 3
                    ? Color.fromRGBO(81, 100, 219, 1.0)
                    : Colors.black38,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "images/tabbar/more_20x20_@2x.png",
                height: 20.0,
                width: 20.0,
                color: _currentIndex == 4
                    ? Color.fromRGBO(81, 100, 219, 1.0)
                    : Colors.black38,
              ),
              title: Container(height: 0.0),
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._currentIndex = page;
    });
  }
}
