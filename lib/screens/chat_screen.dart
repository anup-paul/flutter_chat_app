import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);
  static const String id = "/chatScreen";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: const Text("Chat Screen"),
    ));
  }
}
