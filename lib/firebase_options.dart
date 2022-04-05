// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDioSq_1XRqrwu3PD3Lm40aVVKIQvtfJTQ',
    appId: '1:384718898184:web:c08cadb7cf5d4be68a7dbd',
    messagingSenderId: '384718898184',
    projectId: 'blazebrain-one',
    authDomain: 'blazebrain-one.firebaseapp.com',
    storageBucket: 'blazebrain-one.appspot.com',
    measurementId: 'G-NKYMKLCQZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7E8aaE5s-kNhXJf-COKGQqN41EP1QRkA',
    appId: '1:384718898184:android:ba9ad317d8484b558a7dbd',
    messagingSenderId: '384718898184',
    projectId: 'blazebrain-one',
    storageBucket: 'blazebrain-one.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2fnqs3OX4RZMYoWN0s8QFGqib-wm4mIg',
    appId: '1:384718898184:ios:a07492314886f15e8a7dbd',
    messagingSenderId: '384718898184',
    projectId: 'blazebrain-one',
    storageBucket: 'blazebrain-one.appspot.com',
    iosClientId: '384718898184-9l4k0eetil48q090ntprog9nr9vvtlrg.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
