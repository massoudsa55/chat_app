import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEC = TextEditingController();
  void _handleSubmitted(String txt) {
    _textEC.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              decoration:
                  const InputDecoration.collapsed(hintText: "Send a message"),
              controller: _textEC,
              onSubmitted: _handleSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}
