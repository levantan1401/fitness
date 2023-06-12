import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/data/workout_data.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;
void addDataToFirestore(Map<String, dynamic> jsonData) async {
  try {
    CollectionReference collectionRef = firestore.collection('your_collection');
    await collectionRef.add(jsonData);
    print('Data added successfully to Firestore.');
  } catch (e) {
    print('Error adding data to Firestore: $e');
  }
}