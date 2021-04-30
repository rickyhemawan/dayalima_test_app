import 'package:dayalima_test_app/apis/klob_api.dart';
import 'package:dayalima_test_app/components/klob_card.dart';
import 'package:dayalima_test_app/constants.dart';
import 'package:dayalima_test_app/models/content.dart';
import 'package:flutter/material.dart';

// class ContentsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final String path = ModalRoute.of(context).settings.arguments as String;
//     return Container(
//       child: Text(path),
//     );
//   }
// }

class ContentsScreen extends StatefulWidget {
  @override
  _ContentsScreenState createState() => _ContentsScreenState();
}

class _ContentsScreenState extends State<ContentsScreen> {
  List<Content> contents = [];

  // this is used because of not using state management
  // since the application is considered small
  void fetchContents(context) async {
    if (contents.length > 0) return null;
    final String path = ModalRoute.of(context).settings.arguments as String;
    final List<Content> newContents = await KlobAPI.fetchContents(path: path);
    setState(() => contents = [...newContents]);
  }

  @override
  Widget build(BuildContext context) {
    fetchContents(context);

    List<Widget> categoryWidgets = contents
        .map((e) => KlobCard(
              onTap: () => Navigator.pushNamed(
                context,
                kDetailScreenRoute,
                arguments: e,
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
