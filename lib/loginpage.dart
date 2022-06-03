import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newgreenapp/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              hello(),
              hello2(),
              const SizedBox(
                height: 40.0,
              ),
              emailLabel(),
              emailField(),
              const SizedBox(
                height: 20.0,
              ),
              passwordLabel(),
              passwordField(),
              const SizedBox(
                height: 20.0,
              ),
              memory(),
              const SizedBox(
                height: 20.0,
              ),
              loginButton(),
              const SizedBox(
                height: 40.0,
              ),
              orLogin(),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    facebook(),
                    const SizedBox(
                      width: 20.0,
                    ),
                    google(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 70),
                child: Row(
                  children: [
                    dont(),
                    const SizedBox(
                      width: 10.0,
                    ),
                    signUp(),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget hello() {
    return const Padding(
      padding: EdgeInsets.only(
        right: 52,
      ),
      child: Text(
        'Hello! Welcome Back!',
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  Widget hello2() {
    return const Padding(
      padding: EdgeInsets.only(right: 120),
      child: Text(
        'Hello! again you have been missed!',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.black26,
        ),
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Email Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        suffixIcon: const Icon(
          Icons.remove_red_eye,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget memory() {
    return Row(
      children: const [
        Icon(Icons.check_box_outlined),
        Text(
          'Remember me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 100.0,
        ),
        Text(
          'Forgotten Password',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ],
    );
  }

  Widget loginButton() {
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
            'Login',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget dont() {
    return const Text(
      "Don't have an account?",
      style: TextStyle(
        color: Colors.black26,
        fontSize: 19.0,
      ),
    );
  }

  Widget signUp() {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpPage()));
      },
      child: Text(
        'Sign Up',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: HexColor('#ff188F79'),
        ),
      ),
    );
  }

  Widget emailLabel() {
    return const Padding(
      padding: EdgeInsets.only(right: 230),
      child: Text(
        'Email Address',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget passwordLabel() {
    return const Padding(
      padding: EdgeInsets.only(right: 250),
      child: Text(
        'Password',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget facebook() {
    return Container(
      height: 40.0,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/facebook.png',
            height: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'Facebook',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget google() {
    return Container(
      height: 40.0,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/google1.png',
            height: 20,
          ),
          const SizedBox(
            width: 5.0,
          ),
          const Text(
            'Google',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget orLogin() {
    return Container(
      height: 40.0,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
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
            'Or Login with',
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
      ),
    );
  }
}
