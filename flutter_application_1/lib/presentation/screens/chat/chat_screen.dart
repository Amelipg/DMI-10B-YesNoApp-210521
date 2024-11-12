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
                'https://static.wixstatic.com/media/c14407_7e2c374ea7ba4b2abf7746aca4291973~mv2.jpg/v1/fill/w_640,h_480,fp_0.50_0.50,q_80,usm_0.66_1.00_0.01,enc_auto/c14407_7e2c374ea7ba4b2abf7746aca4291973~mv2.jpg'),
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
            