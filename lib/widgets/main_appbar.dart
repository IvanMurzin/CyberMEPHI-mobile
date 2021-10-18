import 'package:cyber_mephi/Seprate.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  late String title;
  MainAppbar(String title) {
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: const EdgeInsets.only(top: 50.0, left: 30, right: 30),
      color: Seprate.mainColor,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Image.asset("assets/ham_menu.png"),
              alignment: Alignment.centerLeft,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(title,
                  style: TextStyle(
                      color: Seprate.textColor,
                      fontSize: 25,
                      fontFamily: "Montserrat-Black")),
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset(
                "assets/user_menu.png",
                scale: 0.8,
              ),
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
