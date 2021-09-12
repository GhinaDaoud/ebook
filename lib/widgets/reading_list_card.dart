import 'package:ebook/constants.dart';
import 'package:ebook/widgets/two_sides_rounded_button.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auther;
  final double rating;
  final Function? pressDetails;
  final Function? pressRead;

  const ReadingListCard({
    Key? key, 
    required this.image, 
    required this.title, 
    required this.auther, 
    this.rating = 4.5, 
    required this.pressDetails, 
    required this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow:[BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 33,
                  color: kShadowColor,
                )]
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),  
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                ),
                BookRating(score: rating,),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text: auther,
                            style: TextStyle(
                              color: kLightBlackColor,
                            ),
                          )
                        ]
                      )
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:pressDetails!(),
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSidesRoundedButton(
                          press: pressRead!(),
                          text: 'Read',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}