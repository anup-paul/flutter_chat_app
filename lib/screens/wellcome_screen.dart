import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/chat_logo.jpg'),
                    height: 60,
                  ),
                  const Text(
                    'We Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Material(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginScreen');
                    },
                    height: 42,
                    minWidth: 200,
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/registrationScreen');
                    },
                    child: const Text(
                      'Registration',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
