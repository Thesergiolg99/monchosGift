import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAsc4Mp7T0mXgJEkRQuxKZ0NUIRfmewwWM",
            authDomain: "familia-moncho-3s8ioz.firebaseapp.com",
            projectId: "familia-moncho-3s8ioz",
            storageBucket: "familia-moncho-3s8ioz.firebasestorage.app",
            messagingSenderId: "469009104050",
            appId: "1:469009104050:web:991e07fa2cc3b522b81dab"));
  } else {
    await Firebase.initializeApp();
  }
}
