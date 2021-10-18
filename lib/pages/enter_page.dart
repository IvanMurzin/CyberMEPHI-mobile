import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/pages/signin_page.dart';
import 'package:flutter/material.dart';

import 'catalog_page.dart';

class EnterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Seprate.mainColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250),
            Image.asset("assets/main_logo.png"),
            SizedBox(height: 20),
            Text("Cyber.MEPhI",
                style: TextStyle(
                    color: Seprate.textColor,
                    fontSize: 35,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold)),
            Expanded(
              child: Align(
                child: Padding(
                    padding: EdgeInsets.only(bottom: 100.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInPage()),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            margin:
                                EdgeInsets.only(top: 40, left: 60, right: 60),
                            decoration: new BoxDecoration(
                              color: Seprate.blueColor,
                              borderRadius: new BorderRadius.all(
                                  Radius.elliptical(100, 100)),
                            ),
                            child: Center(
                              child: Text('Войти',
                                  style: TextStyle(
                                      color: Seprate.textColor,
                                      fontSize: 25,
                                      fontFamily: "Montserrat-Black")),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SignUpPage()),
                            // );
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CatalogPage()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            margin:
                                EdgeInsets.only(top: 40, left: 60, right: 60),
                            decoration: new BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Seprate.blueColor, width: 2.0),
                              borderRadius: new BorderRadius.all(
                                  Radius.elliptical(100, 100)),
                            ),
                            child: Center(
                              child: Text('Зарегистрироваться',
                                  style: TextStyle(
                                      color: Seprate.textColor,
                                      fontSize: 20,
                                      fontFamily: "Montserrat-Black")),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
