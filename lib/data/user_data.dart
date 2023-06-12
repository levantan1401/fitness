import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness/data/workout_data.dart';

class UserData {
  String? name;
  String? photo;
  String? mail;
  List<WorkoutData>? workouts;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  UserData({
    required this.name,
    required this.photo,
    required this.mail,
    required this.workouts,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    mail = json['mail'];
    if (json['workouts'] != null) {
      List<WorkoutData> workouts = [];
      json['workouts'].forEach((v) {
        workouts.add(WorkoutData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['mail'] = this.mail;
    if (this.workouts != null) {
      data['workouts'] = this.workouts!.map((v) => v.toJson()).toList();
    }
    addDataToFirestore(data);
    return data; 
  }

  static fromFirebase(User? user) {
    return user != null
        ? UserData(
            name: user.displayName ?? "",
            photo: user.photoURL ?? "",
            mail: user.email ?? "",
            workouts: [],
          )
        : [];
  }
  String toJsonString() {
    final str = json.encode(toJson());
    return str;
  }

  void addDataToFirestore(Map<String, dynamic> jsonData) async {
    try {
      CollectionReference collectionRef = firestore.collection('users');
      await collectionRef.add(jsonData);
      print('Dữ liệu đã được thêm vào Firestore thành công.');
    } catch (e) {
      print('Lỗi khi thêm dữ liệu vào Firestore: $e');
    }
  }
}
