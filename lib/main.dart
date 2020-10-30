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
  //the list of pages for the navbar to switch between
  final List<Widget> pages = [
    AddJob(),
    Container(
      child: RaisedButton(
        onPressed: () {},
        child: Text('page2'),
      ),
    ),
    Container(
      child: RaisedButton(
        onPressed: () {},
        child: Text('page3'),
      ),
    )
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c1922),
        title: Text(
          Strings.AppName,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        height: 75.0,
        animationDuration: Duration(milliseconds: 150),
        animationCurve: Curves.bounceInOut,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Color(0xff1c1922),
          ),
          Icon(
            Icons.menu_rounded,
            size: 30,
            color: Color(0xff1c1922),
          ),
          Icon(
            Icons.save_alt,
            size: 30,
            color: Color(0xff1c1922),
          ),
        ],
        onTap: (index) {
          print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Color(0xff1c1922),
        child: PageStorage(
          child: pages[_selectedIndex],
          bucket: bucket,
        ),
      ),
    );
  }
}
