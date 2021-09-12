import 'package:ebook/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline2,
                  children: [
                    TextSpan(
                      text: 'flamin',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    TextSpan(
                      text: 'go.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton(
                  // press: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => HomeScreen()
                  //     )
                  //   );
                  // },
                  text: 'start reading',
                  fontSize: 20,
                  press: () {
                    Navigator.pushNamed(context, '/homescreen');
                  },
                ),
              )
            ]),
      ),
    );
  }
}
