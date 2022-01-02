import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static const String id = "/registrationScreen";

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Registration"),
        ),
        body: const Center(
          child: Text('This is registration screen'),
        ),
      ),
    );
  }
}
