import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _callSignIn(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }


  _initTimer(){
    Timer(Duration(seconds: 2),(){
      _callSignIn();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Text("Instagram", style: TextStyle(fontSize: 45, color: Colors.white, fontFamily: "Billabong"),),
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "All rights reserved",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
