import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Review("lib/assets/images/people.jpg", "Alex Russel",
                "1 review - 5 photos", "Beautiful place"),
            Review(
                "lib/assets/images/fondo.jpg",
                "Dustin Weller",
                "2 reviews - 3 photos",
                "Wonderful location and super familiar"),
            Review(
                "lib/assets/images/2.jpg",
                'Nancy Byers',
                "5 reviews - 1 photos",
                "Fully recomended with beautiful nature")
          ],
        ));
  }
}
