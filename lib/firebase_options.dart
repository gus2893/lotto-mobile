// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAxJ5uLAqwujg7J3rPQgJBaK7nsqDENtp4',
    appId: '1:159039375120:web:9f236c851697ddc3da4795',
    messagingSenderId: '159039375120',
    projectId: 'lotto-98a02',
    authDomain: 'lotto-98a02.firebaseapp.com',
    storageBucket: 'lotto-98a02.appspot.com',
    measurementId: 'G-LCG9ENPLYJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCicOTmwRhEDqAW0EW_n374A4nkxDDQ9rI',
    appId: '1:159039375120:android:12453a67f76c9218da4795',
    messagingSenderId: '159039375120',
    projectId: 'lotto-98a02',
    storageBucket: 'lotto-98a02.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQIb416bTklZM4aU8iRYKa_KDXbqGo7ls',
    appId: '1:159039375120:ios:951b3b9800a4e562da4795',
    messagingSenderId: '159039375120',
    projectId: 'lotto-98a02',
    storageBucket: 'lotto-98a02.appspot.com',
    iosClientId: '159039375120-4rgid5m63ng5v6d72dd2qfkqbbb8h4ka.apps.googleusercontent.com',
    iosBundleId: 'com.example.lottoMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQIb416bTklZM4aU8iRYKa_KDXbqGo7ls',
    appId: '1:159039375120:ios:60657b6b33c5b9f1da4795',
    messagingSenderId: '159039375120',
    projectId: 'lotto-98a02',
    storageBucket: 'lotto-98a02.appspot.com',
    iosClientId: '159039375120-eetqo3sqko79436vb1okrgbnggt8oitu.apps.googleusercontent.com',
    iosBundleId: 'com.example.lottoMobile.RunnerTests',
  );
}
