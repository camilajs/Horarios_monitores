import 'package:flutter/material.dart';


class Splashscreen extends StatelessWidget{
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Monitoria",
      home: Scaffold(
        body: 
          const Center(
            child: Image(image: AssetImage("images/logo.png")),
      )));
  }
}