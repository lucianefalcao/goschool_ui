class Homework {
  final String title;
  final DateTime dueTime;
  bool isDone;

  Homework({this.title, this.dueTime, this.isDone});
}

List<Homework> recentHomeworks = [
  Homework(
    title: "Planimetric Exercises",
    dueTime: DateTime.parse("2020-06-07 10:30:04z"),
    isDone: false,
  ),
  Homework(
    title: "Visicosity Exercises",
    dueTime: DateTime.parse("2020-06-07 10:30:04z"),
    isDone: false,
  ),
];