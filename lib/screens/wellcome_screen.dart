import 'package:chat_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

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
                      height: (animation.value) * 100,
                    ),
                  ),
                  const Text(
                    'We Chat',
                    style: TextStyle(
                      fontSize: 60.0,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
