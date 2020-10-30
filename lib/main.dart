import 'package:flutter/material.dart';
import 'package:flutter_app1/constant/strings.dart';
import './ui/add_job_listing.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: Strings.AppName,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1922),
        title: Text(
          Strings.AppName,
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 50,
        animationDuration: Duration(milliseconds: 150),
        animationCurve: Curves.bounceInOut,
        backgroundColor: Color(0xff1c1922),
        items: <Widget>[
          Icon(Icons.add, size: 30,color:Color(0xff1c1922),),
          Icon(Icons.menu_rounded, size: 30,color: Color(0xff1c1922),),
          Icon(Icons.save_alt, size: 30,color: Color(0xff1c1922),),
        ],
        onTap: (index) {
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Color(0xff1c1922),
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddJob();
                }
                ));
              },
              child: Text('Hello'),
            )
          ],
        ),
      ),
    );
  }
}
