import 'package:flutter/material.dart';

class RoundedButtton extends StatelessWidget {
  RoundedButtton({this.title, this.buttoncolor, required this.onPresed});

  final String? title;
  final Color? buttoncolor;
  final Function()? onPresed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 0.5,
        color: buttoncolor,
        //color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPresed,
          // onPressed: () {
          //   Navigator.pushNamed(context, '/loginScreen');
          // },
          height: 42,
          minWidth: 200,
          child: Text(
            title!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
