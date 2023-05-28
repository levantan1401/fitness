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
      subtitle: "gioi thieu ngan body la gi",
      body: "bfadkajsdfajsksdfklasdkdlkjifdskljfdsakjldsfkjl",
      author: "L.VTan",
      authorImageUrl: "https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/330463395_6032478483500810_4436569131039833655_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LvsGH0zJ5jsAX_giLxt&_nc_ht=scontent.fdad2-1.fna&oh=00_AfAyPXs4qaot36blGs5WvywDPsAMixbNR6St6VJATyRUPA&oe=646A40A5",
      category: "Tin tuc",
      imageUrl: "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '2',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 2",
      subtitle: "gioi thieu ngan body la gi",
      body: "bfadkajsdfajsksdfklasdkdlkjifdskljfdsakjldsfkjl",
      author: "L.VTan",
      authorImageUrl: "https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/330463395_6032478483500810_4436569131039833655_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LvsGH0zJ5jsAX_giLxt&_nc_ht=scontent.fdad2-1.fna&oh=00_AfAyPXs4qaot36blGs5WvywDPsAMixbNR6St6VJATyRUPA&oe=646A40A5",
      category: "Tin tuc",
      imageUrl: "https://thumbs.dreamstime.com/b/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 3",
      subtitle: "gioi thieu ngan body la gi",
      body: "bfadkajsdfajsksdfklasdkdlkjifdskljfdsakjldsfkjl",
      author: "L.VTan",
      authorImageUrl: "https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/330463395_6032478483500810_4436569131039833655_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LvsGH0zJ5jsAX_giLxt&_nc_ht=scontent.fdad2-1.fna&oh=00_AfAyPXs4qaot36blGs5WvywDPsAMixbNR6St6VJATyRUPA&oe=646A40A5",
      category: "Tin tuc",
      imageUrl: "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 4",
      subtitle: "gioi thieu ngan body la gi",
      body: "bfadkajsdfajsksdfklasdkdlkjifdskljfdsakjldsfkjl",
      author: "L.VTan",
      authorImageUrl: "https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/330463395_6032478483500810_4436569131039833655_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LvsGH0zJ5jsAX_giLxt&_nc_ht=scontent.fdad2-1.fna&oh=00_AfAyPXs4qaot36blGs5WvywDPsAMixbNR6St6VJATyRUPA&oe=646A40A5",
      category: "Tin tuc",
      imageUrl: "https://images.unsplash.com/photo-1557626204-59dd03fd2d31?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&w=1000&q=80",
      views: 210,
      createAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    NewsData(
      id: '1',
      title: "Reloaded 1 of 1684 libraries in 1,339ms 5",
      subtitle: "gioi thieu ngan body la gi",
      body: "bfadkajsdfajsksdfklasdkdlkjifdskljfdsakjldsfkjl",
      author: "L.VTan",
      authorImageUrl: "https://scontent.fdad2-1.fna.fbcdn.net/v/t39.30808-6/330463395_6032478483500810_4436569131039833655_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LvsGH0zJ5jsAX_giLxt&_nc_ht=scontent.fdad2-1.fna&oh=00_AfAyPXs4qaot36blGs5WvywDPsAMixbNR6St6VJATyRUPA&oe=646A40A5",
      category: "Tin tuc",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpGqTfHV1YjRASpRRFGWG-EC1tQgzTjxfuF-d8ihnV3SZ37m9KcmAUhRnrTeIpXgVVM78&usqp=CAU",
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
