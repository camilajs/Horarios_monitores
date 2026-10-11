import 'package:flutter/material.dart';
import 'package:horarios_monitores/view/menu.dart';
import 'package:horarios_monitores/view/carousel.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Monitores')), // já cria o botão ☰ sozinho
      drawer: const Menu(),
      body: Column(
        children: [
          const Expanded(child: CarouselPage())
        ],
      ),
    );
  }
}