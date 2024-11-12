import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/chat/other_message_bubble.dart';
import 'package:flutter_application_1/presentation/widgets/shared/message_field_box.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://static.vecteezy.com/system/resources/thumbnails/001/993/889/small_2x/beautiful-latin-woman-avatar-character-icon-free-vector.jpg'),
          ),
        ),
        title: Text('Ameli PG 🦋'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0 )
                ? const OtherMessageBubble()
                : const MyMessageBubble();
              })),
              

              // caja de texto de mensajes
              const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
            