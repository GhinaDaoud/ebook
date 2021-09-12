import 'dart:ui';

import 'package:ebook/constants.dart';
import 'package:ebook/widgets/book_rating.dart';
import 'package:ebook/widgets/reading_list_card.dart';
import 'package:ebook/widgets/two_sides_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String route='homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/image/main_page_bg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(
                              text: 'What are you \nreading',
                            ),
                            TextSpan(
                                text: 'today?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ]),
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // ReadingListCard(
                        //   image: 'assets/images/book-1.png',
                        //   title: 'Crushing & Influence',
                        //   auther: 'Gary Venchuk',
                        //   rating: 4.9,
                        //   pressDetails: pressedDetails,
                        //   pressRead: pressedDetails,
                        // ),
                        // ReadingListCard(
                        //   image: 'assets/images/book-2.png',
                        //   title: 'Top Ten Business Hacks',
                        //   auther: 'Herman Joel',
                        //   rating: 4.7,
                        //   pressDetails: pressedDetails,
                        //   pressRead: pressedDetails,
                        // ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Best of the '),
                                TextSpan(
                                    text: 'day',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                              ]),
                        ),
                        bestOfTheDayCard(context),
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(
                                  text: 'Continue',
                                ),
                                TextSpan(
                                  text: 'reading...',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  color: kShadowColor,
                                  offset: Offset(0, 10),
                                  blurRadius: 33,
                                )
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text('Crushing & Influence',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                                Text(
                                                  'Gary Venchuk',
                                                  style: TextStyle(
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                    'Chapter 7 of 10',
                                                    style: TextStyle(
                                                        color: kLightBlackColor,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                          Image.asset(
                                            'asset/image/book-1.png',
                                            width: 35,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 7,
                                    width:
                                        MediaQuery.of(context).size.width * .6,
                                    decoration: BoxDecoration(
                                        color: kProgressIndicator,
                                        borderRadius: BorderRadius.circular(4)),
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 285,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: MediaQuery.of(context).size.width * 37,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffeaeaea).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NewYork Time Best For 11th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColor,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'How To Win Friends & Influence',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text('Gary Venchuk',
                      style: TextStyle(
                        color: kLightBlackColor,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people..',
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              'asset/image/book-3.png',
              width: MediaQuery.of(context).size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * .3,
              child: TwoSidesRoundedButton(
                press: () {},
                text: 'Read',
                radius: 29,
              ),
            ),
          ),
        ],
      ),
    );
  }
  void  pressedDetails(){
print("print");
  }
}
