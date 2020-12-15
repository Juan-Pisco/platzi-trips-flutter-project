import 'package:flutter/material.dart';
//import 'description_place.dart';

class Review extends StatelessWidget {
  String pathImage;
  String profile_nametxt;
  String review_details;
  String review_comments;

  Review(this.pathImage, this.profile_nametxt, this.review_details,
      this.review_comments);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(image: AssetImage(pathImage), fit: BoxFit.cover),
        ));
    final user_name = Container(
        margin: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Text(profile_nametxt,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0,
            )));
    final userInfo = Container(
        margin: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Text(review_details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7),
            )));

    final user_comments = Container(
        margin: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Text(review_comments,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
                fontWeight: FontWeight.w900)));

    final star_border = Container(
      margin: EdgeInsets.only(top: 0.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611), //Colors.amber
      ),
    );
    final star_half = Container(
        margin: EdgeInsets.only(top: 0.0, right: 3.0),
        child: Icon(
          Icons.star_half,
          color: Color(0xFFf2C611), //Colors.amber
        ));
    final star = Container(
      margin: EdgeInsets.only(top: 0.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611), //Colors.amber
      ),
    );
    final userInfo_stars = Container(
        margin: EdgeInsets.only(bottom: 4.5),
        child: Row(
          children: <Widget>[userInfo, star, star, star_half, star_border],
        ));
    final user_details = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[user_name, userInfo_stars, user_comments]);
    return Row(
      children: <Widget>[photo, user_details],
    );
  }
}
