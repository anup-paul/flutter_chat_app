import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/rounded_button.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({Key? key}) : super(key: key);
  static const String id = '/welcomeScreen';

  @override
  _WellcomeScreenState createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation animation;

  @override
  // ignore: must_call_super
  void initState() {
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
      //upperBound: 100.0,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);

    controller.forward();
    // animation.addStatusListener((status) {
    //   print(status);
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  // ignore: must_call_super
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(animation.value),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('assets/images/chat_logo.jpg'),
                      //height: controller.value,
                      height: (animation.value) * 80,
                    ),
                  ),
                  const FittedBox(
                    child: Text(
                      'We Chat',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              RoundedButtton(
                buttoncolor: Colors.lightBlueAccent,
                title: "Log In",
                onPresed: () {
                  Navigator.pushNamed(context, '/loginScreen');
                },
              ),
              RoundedButtton(
                buttoncolor: Colors.blueAccent,
                title: "Registration",
                onPresed: () {
                  Navigator.pushNamed(context, '/registrationScreen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

