import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newgreenapp/signuppage.dart';

import 'loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageRow(),
              const SizedBox(
                height: 60.0,
              ),
              letsGetStarted(),
              const SizedBox(
                height: 20.0,
              ),
              connect(),
              const SizedBox(
                height: 10.0,
              ),
              joinNowButton(),
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    already(),
                    const SizedBox(
                      width: 10.0,
                    ),
                    login(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget joinNowButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(4.0),
        child: MaterialButton(
          height: 20.0,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
          },
          minWidth: MediaQuery.of(context).size.width,
          child: Text(
            'Join Now',
            style: TextStyle(
              fontSize: 20.0,
              color: HexColor('#ff188F79'),
            ),
          ),
        ),
      ),
    );
  }

  Widget letsGetStarted() {
    return const Text(
      "Let's Get Started",
      textAlign: TextAlign.left,
      style: TextStyle(
          fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget connect() {
    return const Text(
      'Connect with each other while chatting or calling. Enjoy safe and private texting',
      style: TextStyle(fontSize: 20.0, color: Colors.white),
    );
  }

  Widget already() {
    return Text(
      'Already have an account?',
      style: TextStyle(
        color: HexColor('#A2B8B5'),
        fontSize: 20.0,
      ),
    );
  }

  Widget login() {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
      child: const Text(
        'Log In',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget imageRow() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -30,
          top: -10,
          child: Transform.rotate(
            angle: 6.0,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 1.0,
                top: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(75),
                  child: Image.asset(
                    'assets/cloud.jpg',
                    height: 100.0,
                    width: 120.0,
                  ),
                ),
              ),
            ),
          ),
        ),
         Transform.rotate(
            angle: 1.9,
            child: Padding(
              padding: const EdgeInsets.only(right: 100, bottom: 150),
              child: Transform.rotate(
                angle: 4.7,
                child: Image.asset(
                  'assets/cloud.jpg',
                  height: 150.0,
                  width: 140.0,
                ),
              ),
            ),
          ),
        Positioned(
          top: 200.0,
          left: -30,
          child: Transform.rotate(
            angle: 6.0,
            child: Image.asset(
              'assets/cloud.jpg',
              height: 120.0,
              width: 160.0,
            ),
          ),
        ),
      ],
    );
  }
}
// ClipRRect(
// borderRadius: BorderRadius.circular(30.0),
// child: SizedBox.fromSize(
// size: const Size.fromRadius(70),
// child: