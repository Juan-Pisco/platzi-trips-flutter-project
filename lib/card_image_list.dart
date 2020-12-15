import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(28.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("lib/assets/images/river.jpeg"),
          CardImage("lib/assets/images/beach_palm.jpeg"),
          CardImage("lib/assets/images/sunset.jpeg"),
        ],
      ),
    );
  }
}
