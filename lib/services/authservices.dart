import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:frin/widgets/models/user.dart';

class AuthServices {
  final FirebaseAuth _authentic = FirebaseAuth.instance;

  User _userIdFromFirebase(FirebaseUser user ){
    return User(uid: user.uid);
  }

  Stream <User> get user {
    return _authentic.onAuthStateChanged.map(_userIdFromFirebase) ;
  }
  //signing in anonymously
  Future anonSignIn () async {
    try {
      AuthResult output = await _authentic.signInAnonymously();
      FirebaseUser user = output.user;
      return user;
    } catch (e) {
      print ('User not found');
    }

  }

}
