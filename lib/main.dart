  import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

        backgroundColor: Color(0xff1c1922),
        centerTitle: true,
        title: Text(Strings.AppName,style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xff1c1922),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('demo text',
            style: TextStyle( color:Colors.white),),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 100),
        color:Colors.white ,
          backgroundColor:Color(0xff1c1922) ,
          buttonBackgroundColor:  Colors.white,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.add, size: 30,color: Color(0xff1c1922),),
            Icon(Icons.list, size: 30,color:Color(0xff1c1922),),
            Icon(Icons.compare_arrows, size: 30,color:Color(0xff1c1922),),
          ],
              onTap: (index){
            debugPrint('current index is $index');
    },
      ),
    );

  }
}
