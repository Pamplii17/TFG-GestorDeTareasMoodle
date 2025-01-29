class UserModel {
  final int id;
  final String username;
  final String firstname;
  final String lastname;
  final String fullname;
  final String email;
  final String address;
  final String phone1;
  final String phone2;
  final String department;
  final String institution;
  final String idnumber;
  final String interests;
  final int firstaccess;
  final int lastaccess;
  final String auth;
  final int suspended;
  final int confirmed;
  final String lang;
  final String calendartype;
  final String theme;
  final String timezone;
  final int mailformat;
  final int trackforums;
  final String description;
  final int descriptionformat;
  final String city;
  final String country;
  final String profileimageurlsmall;
  final String profileimageurl;
  Map<String, dynamic>? userCourses;

  UserModel(
      {required this.id,
      required this.username,
      required this.firstname,
      required this.lastname,
      required this.fullname,
      required this.email,
      required this.address,
      required this.phone1,
      required this.phone2,
      required this.department,
      required this.institution,
      required this.idnumber,
      required this.interests,
      required this.firstaccess,
      required this.lastaccess,
      required this.auth,
      required this.suspended,
      required this.confirmed,
      required this.lang,
      required this.calendartype,
      required this.theme,
      required this.timezone,
      required this.mailformat,
      required this.trackforums,
      required this.description,
      required this.descriptionformat,
      required this.city,
      required this.country,
      required this.profileimageurlsmall,
      required this.profileimageurl,
      this.userCourses});

  factory UserModel.fromJson(Map<dynamic, dynamic> json) {
    return UserModel(
        id: json['id'],
        username: json['username'],
        firstname: json['firstname'],
        lastname: json['lastname'],
        fullname: json['fullname'],
        email: json['email'],
        address: json['address'],
        phone1: json['phone1'],
        phone2: json['phone2'],
        department: json['department'],
        institution: json['institution'],
        idnumber: json['idnumber'],
        interests: json['interests'],
        firstaccess: json['firstaccess'],
        lastaccess: json['lastaccess'],
        auth: json['auth'],
        suspended: json['suspended'],
        confirmed: json['confirmed'],
        lang: json['lang'],
        calendartype: json['calendartype'],
        theme: json['theme'],
        timezone: json['timezone'],
        mailformat: json['mailformat'],
        trackforums: json['trackforums'],
        description: json['description'],
        descriptionformat: json['descriptionformat'],
        city: json['city'],
        country: json['country'],
        profileimageurlsmall: json['profileimageurlsmall'],
        profileimageurl: json['profileimageurl']);
  }

  set setUserCourses(Map<String, dynamic> courses) {
    userCourses = courses;
  }
}
