import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gestor_tareas_moodle/utils/constants.dart';

class MoodleApiService {
  static String? _token;

  static Future<bool> login(String username, String password) async {
    final url = Uri.parse(
        '$MOODLE_URL/login/token.php?username=$username&password=$password&service=$MOODLE_SERVICE_NAME');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['token'] != null) {
        _token = data['token'];
        return true;
      } else {
        return false;
      }
    } else {
      throw Exception('Error de conexion con el servidor');
    }
  }
}
