import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kos_dea/pencarian.dart';
import 'package:kos_dea/welcome.dart';

class SplashScreenPage extends StatefulWidget{
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    super.initState();
    startSpashScreen();
  }
  startSpashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return WelcomePage();
          })
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Color(0xfff5c32b),
        body: Center(
            child:
            Padding(
              padding: const EdgeInsets.only(left: 0, right:0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo_kosku.png",
                    width: 600.0,
                    height: 600.0,
                  )
                ],
              ),
            )
        )
    );
  }
}