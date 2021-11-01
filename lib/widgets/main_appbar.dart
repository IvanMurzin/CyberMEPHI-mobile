import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/pages/user_page.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  late final String title;
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
              child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Image.asset("assets/ham_menu.png"),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
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
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserPage()));
              },
              child: Container(
                height: 40,
                child: Image.asset("assets/user_icon.png"),
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
