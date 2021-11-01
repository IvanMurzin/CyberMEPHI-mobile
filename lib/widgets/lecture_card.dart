import 'package:cyber_mephi/Seprate.dart';
import 'package:flutter/material.dart';

class LectureCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Seprate.lightBlueColor,
      margin: EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              height: 200,
              color: Colors.black,
            ),
          ),
          Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Название темы",
                    style: TextStyle(
                      color: Seprate.mainDarkColor,
                      fontSize: 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "Предмет",
                    style: TextStyle(
                      color: Seprate.mainDarkColor,
                      fontSize: 15,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "Лектор",
                    style: TextStyle(
                      color: Seprate.mainDarkColor,
                      fontSize: 15,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
