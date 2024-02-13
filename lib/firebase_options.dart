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
    apiKey: 'AIzaSyCQlkWYymA9_zz2GiEqS7pzbDQcUFDxRag',
    appId: '1:642353702702:web:2e77cde6f7d410705cfcbf',
    messagingSenderId: '642353702702',
    projectId: 'proyecto-flutter-adrian-javi',
    authDomain: 'proyecto-flutter-adrian-javi.firebaseapp.com',
    storageBucket: 'proyecto-flutter-adrian-javi.appspot.com',
    measurementId: 'G-7SG0097J61',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNYWMWkz3v-N6fJSiAkGY1fYOmXPZGPy4',
    appId: '1:642353702702:android:001472e55f5b71385cfcbf',
    messagingSenderId: '642353702702',
    projectId: 'proyecto-flutter-adrian-javi',
    storageBucket: 'proyecto-flutter-adrian-javi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBGSmO2RGgWMW7IPz_Dw9udjxJoZdGJdpI',
    appId: '1:642353702702:ios:14ca073de77b1b915cfcbf',
    messagingSenderId: '642353702702',
    projectId: 'proyecto-flutter-adrian-javi',
    storageBucket: 'proyecto-flutter-adrian-javi.appspot.com',
    iosBundleId: 'com.example.sprint',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBGSmO2RGgWMW7IPz_Dw9udjxJoZdGJdpI',
    appId: '1:642353702702:ios:4d5675bbce930ac75cfcbf',
    messagingSenderId: '642353702702',
    projectId: 'proyecto-flutter-adrian-javi',
    storageBucket: 'proyecto-flutter-adrian-javi.appspot.com',
    iosBundleId: 'com.example.sprint.RunnerTests',
  );
}