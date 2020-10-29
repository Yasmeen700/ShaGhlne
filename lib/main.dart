  import 'package:flutter/material.dart';
import 'package:flutter_app1/constant/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.AppName,
      // theme: ThemeData(
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
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
        backgroundColor: Colors.white,
        title: Text(Strings.AppName,style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        color: Color(0xff1c1922),

      ),
    );
  }
}
