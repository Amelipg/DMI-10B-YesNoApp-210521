import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentacion/chat/chat_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App 210519', 
      debugShowCheckedModeBanner: false, 
      theme: AppTheme(selectedColor: 1).theme(), 
      home: const ChatScreen()            
    );
  }
}