class Programs {
  static int programCount = 0;
  static String key = "";
  static String requestId = "";
  static List allPrograms = [];

  final String created;
  final String name;
  final String category;
  final int lesson;
  final String id;

  Programs(
      this.created,
      this.name,
      this.category,
      this.lesson,
      this.id);

}