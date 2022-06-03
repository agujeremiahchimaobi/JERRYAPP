import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newgreenapp/loginpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                createAccount(),
                const SizedBox(
                  height: 3.0,
                ),
                connect(),
                const SizedBox(
                  height: 20.0,
                ),
                emailLabel(),
                const SizedBox(
                  height: 5.0,
                ),
                emailField(),
                const SizedBox(
                  height: 20.0,
                ),
                numberLabel(),
                const SizedBox(
                  height: 5.0,
                ),
                numberField(),
                const SizedBox(
                  height: 20.0,
                ),
                passwordLabel(),
                const SizedBox(
                  height: 5.0,
                ),
                passwordField(),
                const SizedBox(
                  height: 20.0,
                ),
                agreement(),
                signUpButton(),
                const SizedBox(
                  height: 30.0,
                ),
                orLoginWith(),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    facebook(),
                    const SizedBox(
                      width: 20.0,
                    ),
                    google(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      already(),
                      login(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createAccount() {
    return const Padding(
      padding: EdgeInsets.only(right: 128),
      child: Text(
        'Create Account',
        style: TextStyle(
            fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
      ),
    );
  }

  Widget connect() {
    return const Padding(
      padding: EdgeInsets.only(right: 110),
      child: Text(
        'Connect with your friends today!',
        style: TextStyle(
          color: Colors.grey,
          fontFamily: 'Poppins',
          fontSize: 15.0,
        ),
      ),
    );
  }

  Widget emailLabel() {
    return const Padding(
      padding: EdgeInsets.only(right: 240),
      child: Text(
        'Email Address',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
        hintText: 'Enter your email',
        hintStyle: const TextStyle(fontSize: 18.0),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      ),
    );
  }

  Widget numberLabel() {
    return const Padding(
      padding: EdgeInsets.only(right: 240),
      child: Text(
        'Phone Number',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget numberField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        hintText: '+234 | Enter your mobile number',
        hintStyle: const TextStyle(
          fontSize: 18,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      ),
    );
  }

  Widget passwordLabel() {
    return const Padding(
      padding: EdgeInsets.only(right: 265),
      child: Text(
        'Password',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        hintText: 'Enter your password',
        hintStyle: const TextStyle(fontSize: 18.0),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      ),
    );
  }

  Widget agreement() {
    return Row(
      children: const [
        Icon(
          Icons.check_box_outlined,
          color: Colors.grey,
          size: 25.0,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'i Agree to the Terms and Conditions',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
      ],
    );
  }

  Widget signUpButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Material(
        color: HexColor('#ff188F79'),
        elevation: 1.0,
        borderRadius: BorderRadius.circular(4.0),
        child: MaterialButton(
          height: 20.0,
          onPressed: () {},
          minWidth: MediaQuery.of(context).size.width,
          child: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget orLoginWith() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Flexible(
          child: Divider(
            height: 2.0,
            thickness: 2.0,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          'Or Sign Up with',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        SizedBox(
          width: 5.0,
        ),
        Flexible(
          child: Divider(
            height: 2.0,
            thickness: 2.0,
          ),
        ),
      ],
    );
  }

  Widget facebook() {
    return InkWell(
      child: Container(
        height: 40.0,
        width: 150.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/facebook.png',
              height: 20.0,
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'Facebook',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget google() {
    return InkWell(
      child: Container(
        height: 40.0,
        width: 150.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google1.png',
              height: 20.0,
            ),
            const SizedBox(
              width: 5.0,
            ),
            const Text(
              'Google',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget already() {
    return const Text(
      "Already have an account?",
      style: TextStyle(
        color: Colors.black26,
        fontSize: 19.0,
      ),
    );
  }

  Widget login() {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Text(
        'Log In',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: HexColor('#ff188F79'),
        ),
      ),
    );
  }
}
