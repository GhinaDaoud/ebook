
import 'package:ebook/constants.dart';
import 'package:ebook/screens/home_screen.dart';
import 'package:ebook/widgets/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
              )),
     initialRoute: '/',

      routes: {
        '/': (context) => WelcomeScreen(),
        '/homescreen': (context) => HomeScreen()
      },
    );
  }
}

