
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'Firebase is not configured for web.',
      );
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;

      default:
        throw UnsupportedError(
          'Firebase is not configured for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKC_9moVgPdQovPI2yu-WW7vOoGRiP98c',
    appId: '1:476315080911:android:d166c11679a1fb766cbfba',
    messagingSenderId: '476315080911',
    projectId: 'toku-c2496',
    storageBucket: 'toku-c2496.firebasestorage.app',
  );
}
