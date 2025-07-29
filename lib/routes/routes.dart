import 'package:flutter/material.dart';
import 'package:lakelink/screens/home/home_screen.dart';
import 'package:lakelink/screens/register/login_screen.dart';
import 'package:lakelink/screens/register/register_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginScreen(),
    register: (_) => const RegisterScreen(),
    home: (_) => const HomeScreen(),
  };
}