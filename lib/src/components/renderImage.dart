import 'package:flutter/material.dart';

class RenderCircularAvatar extends StatelessWidget {
  RenderCircularAvatar(
      {
        @required this.imageTag, 
        @required this.imagePath,
        this.radius = 50.0
      });
      final imagePath;
      final double radius;
      final String imageTag;
  Widget build(BuildContext context) {
    return new Hero(
      tag: this.imageTag,
      child: new CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: this.radius,
        child: Image.asset(this.imagePath),
      ),
    );
  }
}
