import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  static const String id = "/loginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  height: 150,
                  child: Image.asset('assets/images/chat_logo.jpg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: "Enter your email")),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: "Enter your Password")),
              const SizedBox(
                height: 20,
              ),
              RoundedButtton(
                onPresed: () {},
                title: "Login",
                buttoncolor: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
