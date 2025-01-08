import 'package:flutter/material.dart';
import 'package:gestor_tareas_moodle/screens/home_screen.dart';
import 'package:gestor_tareas_moodle/services/moodle_api_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logoUBU.png',
                  height: 100,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Correo universitario',
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () async {
                      bool success = await MoodleApiService.login(
                          _usernameController.text, _passwordController.text);
                      print(success);
                      if (success) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsets.symmetric(vertical: 15),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(
                      'Acceder',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              '© 2024 Universidad de Burgos',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}