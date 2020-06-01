class Alert {
  final String title;
  final String subject;
  final DateTime time;

  Alert({this.title, this.subject, this.time});
}

// FIXME: time

List<Alert> recentAlerts = [
  Alert(
    title: "Math Test",
    subject: "Trigonometry",
    time: DateTime.parse("2020-06-07 12:30:04z"),
  ),
  Alert(
    title: "Physics Test",
    subject: "Gravitation",
    time: DateTime.parse("2020-06-07 13:30:04z"),
  ),
];