import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Treva',
          style: TextStyle(color: Colors.black),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: const <Widget>[
            Icon(Icons.home, size: 30,),
            Icon(Icons.list, size: 30),
            Icon(Icons.inbox, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],

          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue[300],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          onTap: (index) {
            setState(() {
            });
          },
        ),

          body: Row(
            
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              
              Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(0),
                    child: Align(
                      alignment: Alignment(0.2, 0.6),
                      child: Image(
                        image: AssetImage(
                        "assets/travel_tiket.png"),
                        fit: BoxFit.fill,
                      ),
                ),
              ),
              Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(0),
                    child: Image(
                      image: AssetImage(
                      "assets/travel_route.png"),
                      fit: BoxFit.fill,
                    ),
              ),
              
            ],
        ),
        backgroundColor: Colors.blue[300],
      ),
    );
  }
}