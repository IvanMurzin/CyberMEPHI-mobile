import 'package:cyber_mephi/Seprate.dart';
import 'package:cyber_mephi/widgets/catalog_list.dart';
import 'package:cyber_mephi/widgets/main_appbar.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Seprate.mainColor,
        appBar: MainAppbar("Каталог"),
        body: CatalogList());
  }
}
