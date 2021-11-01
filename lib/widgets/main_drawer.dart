import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/pages/catalog_page.dart';
import 'package:cyber_mephi/pages/lecture_page.dart';
import 'package:cyber_mephi/pages/user_page.dart';
import 'package:flutter/material.dart';

class MainDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Seprate.theDarkestColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/user_icon.png"),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Пользователь",
                                style: TextStyle(
                                    color: Seprate.textColor,
                                    fontSize: 18,
                                    fontFamily: "Montserrat"),
                              ),
                              Text(
                                "Текущий уровень",
                                style: TextStyle(
                                    color: Seprate.textColor,
                                    fontSize: 12,
                                    fontFamily: "Montserrat"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    "Каталог",
                    style: TextStyle(
                        color: Seprate.textColor,
                        fontSize: 18,
                        fontFamily: "Montserrat"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => CatalogPage()));
                  },
                ),
                ListTile(
                  title: const Text(
                    "Лекции",
                    style: TextStyle(
                        color: Seprate.textColor,
                        fontSize: 18,
                        fontFamily: "Montserrat"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LecturePage()));
                  },
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Версия",
                    style: TextStyle(
                        color: Seprate.textColor,
                        fontSize: 18,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
