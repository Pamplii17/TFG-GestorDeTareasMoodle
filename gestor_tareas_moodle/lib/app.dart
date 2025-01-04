import 'package:flutter/material.dart';
import 'package:gestor_tareas_moodle/screens/login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestor Tareas UBU',
      theme: ThemeData(

      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        //'/home': (context) => HomeScreen(),
      },
    );
  }
}
