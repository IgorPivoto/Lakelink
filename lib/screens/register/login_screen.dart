import 'package:flutter/material.dart';
import 'package:lakelink/routes/routes.dart';
import 'package:lakelink/screens/home/home_screen.dart';
import 'package:lakelink/screens/register/register_screen.dart';
import 'package:lakelink/styles/spacing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final spacing = Spacing(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bem-vindo de volta!", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 32),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "E-mail"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Senha"),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              },
              child: const Text("Entrar"),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.register);
              },
              child: const Text("Não tem conta? Cadastre-se"),
            ),
          ],
        ),
      ),
    );
  }
}
