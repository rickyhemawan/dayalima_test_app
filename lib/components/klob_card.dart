import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class KlobCard extends StatelessWidget {
  final Function onTap;
  final String imageUrl;
  final String title;
  final double imageHeight;

  KlobCard({this.onTap, this.imageUrl, this.title, this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: InkWell(
          onTap: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: CachedNetworkImage(
                  height: imageHeight ?? 120.0,
                  imageUrl: imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
