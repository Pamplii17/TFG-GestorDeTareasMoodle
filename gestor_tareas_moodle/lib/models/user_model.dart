import 'package:gestor_tareas_moodle/models/courses.dart';

class UserModel {
  final int id;
  final String username;
  final String firstname;
  final String lastname;
  final String fullname;
  final String email;
  final String department;
  final int firstaccess;
  final int lastaccess;
  final String auth;
  final bool suspended;
  final bool confirmed;
  final String lang;
  final String theme;
  final String timezone;
  final int mailformat;
  final int trackforums;
  final String description;
  final int descriptionformat;
  final String country;
  final String profileimageurlsmall;
  final String profileimageurl;
  List<Courses>? userCourses;

  UserModel(
      {required this.id,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.fullname,
      required this.email,
      required this.department,
      required this.firstaccess,
      required this.lastaccess,
      required this.auth,
      required this.suspended,
      required this.confirmed,
      required this.lang,
      required this.theme,
      required this.timezone,
      required this.mailformat,
      required this.trackforums,
      required this.description,
      required this.descriptionformat,
      required this.country,
      required this.profileimageurlsmall,
      required this.profileimageurl,
      this.userCourses});

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        username = json['username'],
        firstname = json['firstname'],
        lastname = json['lastname'],
        fullname = json['fullname'],
        email = json['email'],
        department = json['department'],
        firstaccess = json['firstaccess'],
        lastaccess = json['lastaccess'],
        auth = json['auth'],
        suspended = json['suspended'],
        confirmed = json['confirmed'],
        lang = json['lang'],
        theme = json['theme'],
        timezone = json['timezone'],
        mailformat = json['mailformat'],
        trackforums = json['trackforums'],
        description = json['description'],
        descriptionformat = json['descriptionformat'],
        country = json['country'],
        profileimageurlsmall = json['profileimageurlsmall'],
        profileimageurl = json['profileimageurl'];

  set setUserCourses(List<Courses> courses) {
    userCourses = courses;
  }

  get getUserCourses => userCourses;
}
