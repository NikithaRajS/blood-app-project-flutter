
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'globals.dart';
import 'utils.dart' as ut;


class HomeScreen extends StatefulWidget {

  @override
  HomeScreenState createState() => new HomeScreenState();
}
class HomeScreenState extends State<HomeScreen> {
  SharedPreferences prefs;



  asyncFunc(BuildContext) async {

  }

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
      title: 'Home',
      theme: ut.maintheme(),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Container(
            decoration: ut.bg(),
            child:
            Center(
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Home page")
                  ],
                )
            ),
          )
      ),
    );
  }
}
