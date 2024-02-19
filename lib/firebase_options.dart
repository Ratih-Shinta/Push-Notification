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
    apiKey: 'AIzaSyCKd6GYfl1St6HThxLCsjfXfPCZDiRCUvU',
    appId: '1:1047602511101:web:9e29fe777f59ac36af5294',
    messagingSenderId: '1047602511101',
    projectId: 'push-notification-2d75f',
    authDomain: 'push-notification-2d75f.firebaseapp.com',
    storageBucket: 'push-notification-2d75f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRHysClwjtT-5K3G8GYYhJMnYVvEOUV9M',
    appId: '1:1047602511101:android:6c934d50ed058fe9af5294',
    messagingSenderId: '1047602511101',
    projectId: 'push-notification-2d75f',
    storageBucket: 'push-notification-2d75f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMGyq8yajoEAYJH0xo46rsYS_sVcpT6TM',
    appId: '1:1047602511101:ios:8aef78b16932414faf5294',
    messagingSenderId: '1047602511101',
    projectId: 'push-notification-2d75f',
    storageBucket: 'push-notification-2d75f.appspot.com',
    iosBundleId: 'com.example.pushNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMGyq8yajoEAYJH0xo46rsYS_sVcpT6TM',
    appId: '1:1047602511101:ios:4ec0796c6f5a74e9af5294',
    messagingSenderId: '1047602511101',
    projectId: 'push-notification-2d75f',
    storageBucket: 'push-notification-2d75f.appspot.com',
    iosBundleId: 'com.example.pushNotification.RunnerTests',
  );
}
