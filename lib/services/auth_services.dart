import 'package:chat_app/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  getCurrebtUser() async {
    return await _auth.currentUser;
  }

  Future<User?> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      // User selects account
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // If user cancels sign in
      if (googleUser == null) {
        return null;
      }

      // Get authentication details
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      // Sign in to Firebase
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final User? user = userCredential.user;
      String userName = user!.email!.replaceAll("@gmail.com", "");

      if (user != null) {
        Map<String, String> userData = {
          "Name": user.displayName ?? "",
          "Email": user.email ?? "",
          "Image": user.photoURL ?? "",
          "Id": user.uid,
        };

        await DatabaseMethods().addUserInfoToDB(user.uid, userData);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text("Login Successful"),
          ),
        );
      }

      return user;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("Login Failed: $e"),
        ),
      );
      return null;
    }
  }
}
