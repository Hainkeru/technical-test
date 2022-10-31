class Repository {
  List<DateTime> datas = [
    DateTime.now(),
    DateTime.now().subtract(const Duration(minutes: 3)),
    DateTime.now().subtract(const Duration(minutes: 12)),
    DateTime.now().subtract(const Duration(minutes: 43)),
    DateTime.now().subtract(const Duration(hours: 1, minutes: 23)),
    DateTime.now().subtract(const Duration(hours: 6, minutes: 23)),
    DateTime.now().subtract(const Duration(days: 1)),
    DateTime.now().subtract(const Duration(days: 1, hours: 6, minutes: 23)),
    DateTime.now().subtract(const Duration(days: 2, hours: 8, minutes: 23)),
    DateTime.now().subtract(const Duration(days: 2, hours: 8, minutes: 23)),
  ];
}