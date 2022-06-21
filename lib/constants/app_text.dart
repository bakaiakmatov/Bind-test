import 'app_Images.dart';

class HistoryItem {
  HistoryItem({
    required this.image,
    required this.title,
    required this.time,
    required this.sum,
    required this.date,
  });

  final String image;
  final String title;
  final String time;
  final String sum;
  final DateTime date;

  static List<HistoryItem> elements = [
    HistoryItem(
      image: AppImages.pret,
      title: 'Pret A Manger',
      time: '12:00',
      sum: '- 50.31',
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      image: AppImages.arrowLeft,
      title: 'Darren Hodgkin',
      time: '11:55',
      sum: '+ 130.31',
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      image: AppImages.mcdonalds,
      title: 'McDonalds',
      time: '21:02',
      sum: '- 55.25',
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      image: AppImages.starbucks,
      title: 'Starbucks',
      time: '09:24',
      sum: '- 51.02',
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      image: AppImages.arrowRight,
      title: 'Dave Winklevoss',
      time: '15:08',
      sum: '- 300.00',
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    HistoryItem(
      image: AppImages.virgin,
      title: 'Virgin MegaStore',
      time: '22:54',
      sum: '- 500.25',
      date: DateTime.now().subtract(const Duration(days: 2)),
    ),
    HistoryItem(
      image: AppImages.nike,
      title: 'Nike',
      time: '18:38',
      sum: '300.00',
      date: DateTime.now().subtract(const Duration(days: 2)),
    ),
    HistoryItem(
      image: AppImages.lv,
      title: 'Louis Vuitton',
      time: '20:30',
      sum: '500.00',
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    HistoryItem(
      image: AppImages.carrefour,
      title: 'Carrefour',
      time: '16:05',
      sum: '450.65',
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    HistoryItem(
      image: AppImages.starbucks,
      title: 'Starbucks',
      time: '09:24',
      sum: '- 25.50',
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
     HistoryItem(
      image: AppImages.mcdonalds,
      title: 'McDonalds',
      time: '20:014',
      sum: '- 60.05',
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ];
}
