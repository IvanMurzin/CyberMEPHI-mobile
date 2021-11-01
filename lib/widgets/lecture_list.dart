import 'package:cyber_mephi/widgets/lecture_card.dart';
import 'package:flutter/material.dart';

class LectureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return LectureCard();
        },
      ),
    );
  }
}
