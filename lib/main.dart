import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:chat_app/screens/wellcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      //home: const WellcomeScreen(),
      initialRoute: '/welcomeScreen',
      routes: {
        '/welcomeScreen': (context) => const WellcomeScreen(),
        '/loginScreen': (context) => LoginScreen(),
        '/registrationScreen': (context) => RegisterScreen()
      },
    );
  }
}
