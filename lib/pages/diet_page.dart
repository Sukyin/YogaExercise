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
        title: Text("Diet",style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w600
        ),),
        centerTitle: false,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(244, 244, 244, 1.0)
        ),
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
                  return InkWell(
                    onTap: (){
                      

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(10.0)
                      ),
                      // images/icons/uncheck-diet_64x64_@2x.png
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        child: Column(
                          children: <Widget>[
                            Image.asset('images/icons/uncheck-diet_64x64_@2x.png',height: 30,width: 30,color: Colors.black45,),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text("Day "+"$index",style: TextStyle(
                        fontWeight: FontWeight.w700
                      ),),
                            )
                          ],
                        ),
                      )
                    )
                  ),
                  );
                },
              ),
      ),
    );
  }
}