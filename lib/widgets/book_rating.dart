import 'package:flutter/material.dart';

import '../constants.dart';

class BookRating extends StatelessWidget {
  final double score;
  
  const BookRating({
    Key? key, required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(
          offset: Offset(3, 7),
          blurRadius: 20,
          color: Color(0xffd3d3d3).withOpacity(.5),
        )]
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '$score',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}