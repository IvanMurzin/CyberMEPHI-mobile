import 'dart:async';

import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/pages/enter_page.dart';
import 'package:cyber_mephi/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 1750),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => EnterScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Seprate.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/main_logo.png"),
            SizedBox(height: 20),
            Text("Cyber.MEPhI",
                style: TextStyle(
                    color: Seprate.textColor,
                    fontSize: 35,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
