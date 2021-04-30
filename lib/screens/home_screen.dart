import 'package:dayalima_test_app/apis/klob_api.dart';
import 'package:dayalima_test_app/components/klob_card.dart';
import 'package:dayalima_test_app/constants.dart';
import 'package:dayalima_test_app/models/category.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Category> categories = [];

  void fetchCategories() async {
    final List<Category> newCategories = await KlobAPI.fetchCategories();
    setState(() => categories = [...newCategories]);
  }

  @override
  void initState() {
    fetchCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> categoryWidgets = categories
        .map((e) => KlobCard(
              onTap: () => Navigator.pushNamed(
                context,
                kContentsScreenRoute,
                arguments: e.listData,
              ),
              title: e.name,
              imageUrl: e.img,
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('K')),
      body: GridView.count(
        crossAxisCount: 2,
        children: categoryWidgets,
      ),
    );
  }
}
