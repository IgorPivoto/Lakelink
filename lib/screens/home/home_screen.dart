import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: const Center(
        child: Text(
          "Bem-vindo ao Alimentador de Peixe!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
