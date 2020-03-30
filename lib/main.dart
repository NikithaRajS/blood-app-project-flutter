
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'utils.dart' as ut;
import 'home.dart';
import 'intro.dart';


void main() {
  //asyncFunc();
  runApp(MaterialApp(title: 'Navigation Basics',home: Splash(),));
}

SharedPreferences prefs;

asyncFunc(BuildContext) async { // Async func to handle Futures easier; or use Future.then
  prefs = await SharedPreferences.getInstance();
  var frun = prefs.getBool("frun");
  if(frun==true){
    //Navigate to home
    Navigator.pushReplacement(
      BuildContext,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
  else{
    //Navigate to Intro
    Navigator.pushReplacement(
      BuildContext,
      MaterialPageRoute(builder: (context) => Intro()),
    );
  }
}

class Splash extends StatefulWidget {
  //HomeScreen({Key key}) : super(key: key);

  @override
  SplashScreenState createState() => new SplashScreenState();
}
class SplashScreenState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => start(context));
  }
  void start(BuildContext){
    asyncFunc(BuildContext);
  }
  @override void dispose() {super.dispose();}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Student Login',
        theme: ut.maintheme(),
        home: Scaffold(
          /*appBar: AppBar(
              title: Text("Splash"),
            ),*/

            body: Container(
                decoration: ut.bg()
            )
        ));
  }
}


