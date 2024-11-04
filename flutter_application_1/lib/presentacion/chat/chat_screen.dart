
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.canalnet.tv/2021/11/paola-danna-974x550.jpg'),
          ),
        ),
        title: Text('Danna ❤️'),
        centerTitle: false,
      ),
    );
  }
}