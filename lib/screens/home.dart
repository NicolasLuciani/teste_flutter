import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Sua imagem
            Image.asset(
              'assets/logo.png', // <-- Coloque o nome do seu arquivo aqui
              height: 150,
            ),

            const SizedBox(height: 20), // Espaçamento entre a imagem e o texto

            // 2. Seu texto de boas-vindas
            const Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}