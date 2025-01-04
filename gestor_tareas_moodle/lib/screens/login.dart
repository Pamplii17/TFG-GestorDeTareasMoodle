import 'package:flutter/material.dart';
import 'package:gestor_tareas_moodle/services/moodle_api_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;
  String? _errorMessage;

  void _handleLogin() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final username = _usernameController.text;
    final password = _passwordController.text;

    try {
      bool success = await MoodleApiService.login(username, password);
      if (success) {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        setState(() {
          _errorMessage = 'Usuario o contraseña inválidos';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Error al iniciar sesión: $e';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (_errorMessage != null)
              Text(
                _errorMessage!,
                style: TextStyle(color: Colors.red),
              ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Usuario'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            _isLoading 
              ? CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: _handleLogin,
                  child: Text('Ingresar'),
                ),
          ],
        ),
      ),
    );
  }
}
