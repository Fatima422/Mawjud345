import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:problem/Login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      // after 5 seconds route into introduationSecreen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginWidget()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 248, 250, 1.0),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/images/logo.png', width: 200.0, height: 200.0),
              const SizedBox( // مسافه فاصله
                height: 30,
              ),
              SpinKitSpinningLines(  color: Color(0xFF3D9CA3),size: 25,)
            ],),
        ],
      ),
    );
  }
}

