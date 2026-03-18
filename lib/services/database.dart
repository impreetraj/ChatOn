import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserInfoToDB(
      String userId, Map<String, String> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set(userInfoMap);
  }

  Future<void> addMessage(
      String messageId, String chatroomId, Map<String, dynamic> messageInfoData) {
    return FirebaseFirestore.instance
        .collection("chatrooms")
        .doc(chatroomId)
        .collection("chats")
        .doc(messageId)
        .set(messageInfoData);
  }

  updateLastMessageSend(String chatroomId, Map<String, dynamic> LastMesaage) {
    return FirebaseFirestore.instance
        .collection("chatrooms")
        .doc(chatroomId)
        .update(LastMesaage);
  }
}
