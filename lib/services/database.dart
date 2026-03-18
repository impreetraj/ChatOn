import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserInfoToDB(String userId, Map<String, String> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfoMap);
  }
}