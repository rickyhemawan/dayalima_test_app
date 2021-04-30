import 'package:cached_network_image/cached_network_image.dart';
import 'package:dayalima_test_app/models/content.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Content content =
        ModalRoute.of(context).settings.arguments as Content;

    return Scaffold(
      appBar: AppBar(title: Text('K')),
      body: Container(
        child: Card(
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(3.0),
                  child: CachedNetworkImage(
                    height: 180.0,
                    width: double.infinity,
                    imageUrl: content.img,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  content.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                Text(
                  content.desc,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
