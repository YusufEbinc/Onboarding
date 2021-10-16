import 'package:flutter/material.dart';

import 'package:flutter_my_widget/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Anda', fontSize: 25),
        ),
      ),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
