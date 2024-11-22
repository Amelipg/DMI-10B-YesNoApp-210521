import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/presentation/screens/chat/chat_screen.dart';
import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
import 'config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes - No App 210521',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: ChatScreen()
      ),
    );
  }
}
