import 'package:cyber_mephi/Seprate.dart';
import 'package:flutter/material.dart';

class CatalogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 8,
      color: Seprate.lightBlueColor,
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 20.0, left: 20, right: 10),
                        child: Text(
                          "Математический анализ",
                          style: TextStyle(
                            color: Seprate.mainDarkColor,
                            fontSize: 20,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 10.0, left: 20, right: 10),
                        child: Text(
                          "Костин А.Б.",
                          style: TextStyle(
                            color: Seprate.mainDarkColor,
                            fontSize: 15,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 4,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      height: 80,
                      child: Image.network(
                          "https://home.mephi.ru/system/users/avatars/000/000/978/medium/photo.jpg?1442511279"),
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("Ну пусть будет кол-во лекций"),
            ),
          ],
        ),
      ),
    );
  }
}