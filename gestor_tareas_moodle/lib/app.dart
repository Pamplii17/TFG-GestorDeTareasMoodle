import 'package:flutter/material.dart';
import 'package:gestor_tareas_moodle/screens/login.dart';
import 'package:gestor_tareas_moodle/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestor Tareas UBU',
      theme: ThemeData(
        primaryColor: const Color(0xFFF4F4F4)
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
