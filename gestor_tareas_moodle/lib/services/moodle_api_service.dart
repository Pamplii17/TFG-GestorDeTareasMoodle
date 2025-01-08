import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gestor_tareas_moodle/utils/constants.dart';

class MoodleApiService {
  static String? _token;

  static Future<bool> login(String username, String password) async {
    // Reemplaza con la URL de tu servidor Moodle
    final uri = Uri.parse('http://localhost/login/token.php');

    try {
      final response = await http.post(
        uri,
        body: {
          'username': username,
          'password': password,
          'service': MOODLE_SERVICE_NAME,
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return true;
      } else {
        print('Error en la solicitud: ${response.statusCode}');
        print('Detalles: ${response.body}');
        return false;
      }
    } catch (e) {
      print('Error al conectar con Moodle: $e');
    }

    return true;
  }  
}
