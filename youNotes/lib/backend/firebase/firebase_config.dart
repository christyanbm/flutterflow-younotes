import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8-xw1zrxTv0SiLtY84M_v4cGi8uAt7CM",
            authDomain: "proyecto-1-991dd.firebaseapp.com",
            projectId: "proyecto-1-991dd",
            storageBucket: "proyecto-1-991dd.firebasestorage.app",
            messagingSenderId: "1007157371513",
            appId: "1:1007157371513:web:231c46846166f83acf2aa8"));
  } else {
    await Firebase.initializeApp();
  }
}
