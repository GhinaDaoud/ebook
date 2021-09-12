import 'dart:ui';

import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final Function press;
  final double fontSize;
  final double verticalPadding;
  final double horizontalPadding; 

  const RoundedButton({ 
    Key? key, 
     this.text='', 
     required this.press, 
    this.fontSize = 16 , 
    this.verticalPadding = 16, 
    this.horizontalPadding = 30,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press(),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: widget.verticalPadding, horizontal: widget.horizontalPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 30,
            color: Color(0xff666666).withOpacity(.11),
          )]
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}