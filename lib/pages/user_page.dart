import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/widgets/lecture_card.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Профиль"),
        backgroundColor: Seprate.mainDarkColor,
      ),
      body: Container(
        color: Seprate.mainColor,
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 30, right: 30),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/user_icon.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Пользователь",
                          style: TextStyle(
                              color: Seprate.textColor,
                              fontSize: 22,
                              fontFamily: "Montserrat"),
                        ),
                        Text(
                          "Текущий уровень",
                          style: TextStyle(
                              color: Seprate.textColor,
                              fontSize: 16,
                              fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "До следующего уровня: ",
                  style: TextStyle(
                      color: Seprate.textColor,
                      fontSize: 16,
                      fontFamily: "Montserrat"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: LinearProgressIndicator(
                  backgroundColor: Seprate.lightBlueColor,
                  color: Seprate.pinkColor,
                  value: 0.15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Настройки",
                  style: TextStyle(
                      color: Seprate.textColor,
                      fontSize: 16,
                      fontFamily: "Montserrat"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Избранное: ",
                  style: TextStyle(
                      color: Seprate.textColor,
                      fontSize: 16,
                      fontFamily: "Montserrat"),
                ),
              ),
              Flexible(
                child:
                 Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ListView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return LectureCard();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}