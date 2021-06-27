import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'main.dart';

void main() {
  runApp(MySplash());
}


class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Center(
              child:Container(
                margin: EdgeInsets.only(top: 150, bottom: 8, right: 5),
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/2,
                child: FlareActor("assets/AnimAccesys1.flr", animation: "spin",),
              ),
            ),*/
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 0, right: 0),
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  children: <Widget>[
                    Image.asset("images/mjcenxovais.jpg"),
                  ],
                ),
              ),
            ),




          ],



        ),




      ),

    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5)).then((_){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MyApp())
      );
    });
  }


}