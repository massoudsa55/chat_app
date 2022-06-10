import 'package:flutter/material.dart';
import 'package:chat_app/chat_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messaoud chat", style: TextStyle(fontSize: 30.0)),
      ),
	  // TODO: use body to create design
      body: const ChatScreen(),
    );
  }
}
