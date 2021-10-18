import 'package:cyber_mephi/widgets/catalog_card.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CatalogCard();
      },
    );
  }
}
