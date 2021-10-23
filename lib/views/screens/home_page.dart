import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_my_widget/views/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Başlık',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white),
        )),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/logo.png",
            color: const Color(0xFF63B4B8),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: const Center(
        child: TextWidegt(
            titleName: 'Home Page',
            fontSize: 30,
            fontName: 'Anda',
            textColor: Colors.black),
      ),
    );
  }
}
