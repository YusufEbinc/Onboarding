import 'package:flutter/material.dart';

import 'package:flutter_my_widget/views/screens/onboarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF4B3869),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Anda', fontSize: 25),
        ),
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const OnboardingPage(),
    );
  }
}
