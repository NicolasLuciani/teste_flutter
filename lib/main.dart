import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:teste_flutter/screens/login-password.dart';
import 'package:teste_flutter/screens/login.dart';
import 'package:teste_flutter/screens/cadastro.dart';
import 'package:teste_flutter/screens/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // Tela que será aberta quando iniciar o aplicativo
      home: const CreateAccount(),

      routes: {
        '/home': (context) => const Home(),
        '/home_pass': (context) => const Login_password(),
        '/create_account': (context) => const CreateAccount(),
        '/login': (context) => const Login(),
        '/login_forgot': (context) => const LoginForgot(),
      },
    );
  }
}