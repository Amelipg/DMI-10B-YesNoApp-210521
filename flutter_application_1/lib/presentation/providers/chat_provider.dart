import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola Mi Niña', fromWho: FromWho.me),
    Message(text: 'Ya saliste de la uni?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String text ) async{
    // todo: Implementar metodo 
  }
}
