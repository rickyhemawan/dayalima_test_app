import 'package:dayalima_test_app/screens/contents_screen.dart';
import 'package:dayalima_test_app/screens/detail_screen.dart';
import 'package:dayalima_test_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: kHomeScreenRoute,
      routes: {
        kHomeScreenRoute: (context) => HomeScreen(),
        kContentsScreenRoute: (context) => ContentsScreen(),
        kDetailScreenRoute: (context) => DetailScreen(),
      },
    );
  }
}
