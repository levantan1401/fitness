// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:fitness/data/exercise_data.dart';

class NewsData {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createAt;

  NewsData({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createAt,
  });

  static List<NewsData> newsData = [
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms",
      subtitle: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3.",
      body: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3. The app will have three screens to show and browse news articles. By the end of the tutorial, you’ll learn how to prepare a modern and neat UI, manage tabs and a list of widgets, and much more. ",
      author: "L.VTan",
      authorImageUrl: "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "Tin tuc",
      imageUrl: "https://img.freepik.com/free-photo/young-fitness-man-studio_7502-5008.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData( 
      id: '2',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 2",
      subtitle: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3.",
      body: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3. The app will have three screens to show and browse news articles. By the end of the tutorial, you’ll learn how to prepare a modern and neat UI, manage tabs and a list of widgets, and much more. ",
      author: "L.VTan",
      authorImageUrl: "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "Tin tuc",
      imageUrl: "https://images.pexels.com/photos/1547248/pexels-photo-1547248.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 3",
      subtitle: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3.",
      body: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3. The app will have three screens to show and browse news articles. By the end of the tutorial, you’ll learn how to prepare a modern and neat UI, manage tabs and a list of widgets, and much more. ",
      author: "L.VTan",
      authorImageUrl: "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "Tin tuc",
      imageUrl: "https://img.freepik.com/free-photo/standing-single-arm-dumbbell-row_1163-1852.jpg?w=2000",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 4",
      subtitle: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3.",
      body: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3. The app will have three screens to show and browse news articles. By the end of the tutorial, you’ll learn how to prepare a modern and neat UI, manage tabs and a list of widgets, and much more. ",
      author: "L.VTan",
      authorImageUrl: "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "Tin tuc",
      imageUrl: "https://images.alphacoders.com/608/608245.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 5",
      subtitle: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3.",
      body: "Today, we will build a Flutter News App UI. With this Flutter tutorial for beginners, you will learn how to build the UI of a news app from scratch using Flutter 3. The app will have three screens to show and browse news articles. By the end of the tutorial, you’ll learn how to prepare a modern and neat UI, manage tabs and a list of widgets, and much more. ",
      author: "L.VTan",
      authorImageUrl: "https://nerdhits.com.br/wp-content/uploads/2023/01/zoro-one-piece.jpg",
      category: "Tin tuc",
      imageUrl: "https://www.indocare.in/blog/wp-content/uploads/2020/01/Health-tips-738x420.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    )
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createAt
      ];
}
