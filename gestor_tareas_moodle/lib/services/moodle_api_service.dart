import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:gestor_tareas_moodle/utils/constants.dart';

class MoodleApiService {
  static String? _token;
  static String? _username;

  static Future<bool> login(String username, String password) async {
    final uri = Uri.parse('$MOODLE_URL/login/token.php');
    print('$username');
    print('$password');
    try {
      print('No hay error');
      final response = await http.post(
        uri,
        body: {
          'username': username,
          'password': password,
          'service': MOODLE_SERVICE_NAME,
        },
      );
      print('${response.statusCode}');
      if (response.statusCode == 200) {
        _username = username;
        final data = jsonDecode(response.body);
        _token = data['token'];
        print(_token);
        return true;
      } else {
        print('Error en la solicitud: ${response.statusCode}');
        print('Detalles: ${response.body}');
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<Map<dynamic, dynamic>> getUserInfo() async {
    final url = Uri.parse('$MOODLE_URL/webservice/rest/server.php');
    print('Estoy con gestUserInfo');
    try {
      final response = await http.post(url, body: {
        'wsfuntion': WS_GET_USER_INFO,
        'moodlewsrestformat': 'json',
        'wstoken': _token,
        'field': 'username',
        'values[]': _username
      });
      print('Esperadon respuesta');
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data != null) {
          print('Return valido');
          print(data.runtimeType);
          return data;
        } else {
          throw Exception('No data found');
        }
      } else {
        throw Exception('Error statusCode');
      }
    } catch (e) {
      throw Exception('Fatal error while getting user info');
    }
  }

  static Future<Map<String, dynamic>> getUserCourses(int userid) async {
    final url = Uri.parse('$MOODLE_URL/webservice/rest/server.php');

    try {
      final response = await http.post(url, body: {
        'wsfuntion': WS_GET_USER_COURSES,
        'moodlewsrestformat': 'json',
        'wstoken': _token,
        'userid': 2
      });

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['id'] != null) {
          return json['id'];
        } else {
          throw Exception('No data found');
        }
      } else {
        throw Exception('No response');
      }
    } catch (e) {
      throw Exception('Fatal error');
    }
  }
}
