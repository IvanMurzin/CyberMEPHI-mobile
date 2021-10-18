import 'package:cyber_mephi/Seprate.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Seprate.blueColor,
        elevation: 30,
        backgroundColor: Seprate.mainDarkColor,
        title: Text(
          "Вход",
          style: TextStyle(
            color: Seprate.textColor,
            fontSize: 25,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Seprate.mainColor,
      body: Center(
        child: Text(
          """Ну вы поняли...
(я усталь, а красиво делать долго, так что пока так((""",
          style: TextStyle(
              color: Seprate.textColor,
              fontSize: 25,
              fontFamily: "Montserrat-Bold"),
        ),
      ),
    );
  }
}
