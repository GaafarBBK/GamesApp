// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCENqHbDu_0ONF2Swzha49cYL9QMR1ZsjM',
    appId: '1:642086517417:web:67afc728a777ccde4947b8',
    messagingSenderId: '642086517417',
    projectId: 'lati-games-69',
    authDomain: 'lati-games-69.firebaseapp.com',
    storageBucket: 'lati-games-69.appspot.com',
    measurementId: 'G-PXXW3BXZ1C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_PS10_zx1LSDafiP937piZQ0ZSbtQKbw',
    appId: '1:642086517417:android:7778f1e36321b3b64947b8',
    messagingSenderId: '642086517417',
    projectId: 'lati-games-69',
    storageBucket: 'lati-games-69.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfI1gAdKNnNQtAbTjRsqLzXSnAdVo_-S0',
    appId: '1:642086517417:ios:4e16b1a7f2e834d04947b8',
    messagingSenderId: '642086517417',
    projectId: 'lati-games-69',
    storageBucket: 'lati-games-69.appspot.com',
    iosBundleId: 'com.example.gameApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCENqHbDu_0ONF2Swzha49cYL9QMR1ZsjM',
    appId: '1:642086517417:web:8767647b3c86b3344947b8',
    messagingSenderId: '642086517417',
    projectId: 'lati-games-69',
    authDomain: 'lati-games-69.firebaseapp.com',
    storageBucket: 'lati-games-69.appspot.com',
    measurementId: 'G-RWGVCQZ4QH',
  );

}
