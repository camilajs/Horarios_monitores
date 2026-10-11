import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Segunda'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Terça'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Quarta'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Quinta'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Sexta'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Sábado'),
            contentPadding: const EdgeInsets.all(20),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}