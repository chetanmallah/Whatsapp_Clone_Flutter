import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/colors.dart';
import 'package:whatsapp_clone_flutter/responsive/responsive_layout.dart';
import 'package:whatsapp_clone_flutter/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone_flutter/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp_UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayot(),
        webScreenLayout: WebScreenLayot(),
      ),
    );
  }
}
