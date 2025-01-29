class Courses {
  final int id;
  final String shortname;
  final String fullname;
  final String displayname;
  final int enrolledusercount;
  final String idnumber;
  final int visible;
  final String summary;
  final int summaryformat;
  final String format;
  final String courseimage;
  final int showgrades;
  final String lang;
  final int enablecompletion;
  final int completionhascriteria;
  final int completionusertracked;
  final int category;
  final double progress;
  final int completed;
  final int startdate;
  final int enddate;
  final int marker;
  final int lastaccess;
  final int isfavourite;
  final int hidden;

  Courses({
    required this.id,
    required this.shortname,
    required this.fullname,
    required this.displayname,
    required this.enrolledusercount,
    required this.idnumber,
    required this.visible,
    required this.summary,
    required this.summaryformat,
    required this.format,
    required this.courseimage,
    required this.showgrades,
    required this.lang,
    required this.enablecompletion,
    required this.completionhascriteria,
    required this.completionusertracked,
    required this.category,
    required this.progress,
    required this.completed,
    required this.startdate,
    required this.enddate,
    required this.marker,
    required this.lastaccess,
    required this.isfavourite,
    required this.hidden,
  });

  factory Courses.fromJson(Map<String, dynamic> json) {
    return Courses(
      id: json['id'],
      shortname: json['shortname'],
      fullname: json['fullname'],
      displayname: json['displayname'],
      enrolledusercount: json['enrolledusercount'],
      idnumber: json['idnumber'],
      visible: json['visible'],
      summary: json['summary'],
      summaryformat: json['summaryformat'],
      format: json['format'],
      courseimage: json['courseimage'],
      showgrades: json['showgrades'],
      lang: json['lang'],
      enablecompletion: json['enablecompletion'],
      completionhascriteria: json['completionhascriteria'],
      completionusertracked: json['completionusertracked'],
      category: json['category'],
      progress: json['progress'],
      completed: json['completed'],
      startdate: json['startdate'],
      enddate: json['enddate'],
      marker: json['marker'],
      lastaccess: json['lastaccess'],
      isfavourite: json['isfavourite'],
      hidden: json['hidden'],
    );
  }
}
