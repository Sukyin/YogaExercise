import 'package:flutter/material.dart';
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
        title: Text("Meditation",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600
        ),),
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView.builder(
        
        itemCount: 10,
        itemBuilder: (BuildContext context,int index)
        {
         return _buildItemWidget();
        },
      ),
    );
  }

  Widget _buildItemWidget(){

    return Container(
                  height: 160,
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),
                    color: Colors.black26
                  ),

                );

  }
}