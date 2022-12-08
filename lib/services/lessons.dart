class Lessons {
  static int lessonCount = 0;
  static String key = "";
  static String requestId = "";
  static List allLessons = [];

  final String created;
  final String name;
  final int duration;
  final String category;
  final bool isLocked;
  final String id;

  Lessons(this.created, this.name, this.duration, this.category, this.isLocked,
      this.id);
}
