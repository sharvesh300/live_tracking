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
        return macos;
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
    apiKey: 'AIzaSyCrhYG6Wmb3irNhDeaurw_mw2lUFYyvjK0',
    appId: '1:640159568985:web:8aa2cd6cb360f45e34cd48',
    messagingSenderId: '640159568985',
    projectId: 'live-tracking-b76c0',
    authDomain: 'live-tracking-b76c0.firebaseapp.com',
    storageBucket: 'live-tracking-b76c0.firebasestorage.app',
    measurementId: 'G-P5DR6J3GKT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCd4gMZrPedVJCmeh_l_cN0hQayK-5ftDU',
    appId: '1:640159568985:android:c34c32eaa8a57fa334cd48',
    messagingSenderId: '640159568985',
    projectId: 'live-tracking-b76c0',
    storageBucket: 'live-tracking-b76c0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZO38QJxF702vfpX4RA7rP53EtYcQL1X0',
    appId: '1:640159568985:ios:c0cd7966bdb3ae9f34cd48',
    messagingSenderId: '640159568985',
    projectId: 'live-tracking-b76c0',
    storageBucket: 'live-tracking-b76c0.firebasestorage.app',
    iosBundleId: 'com.example.geoLiveTracking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZO38QJxF702vfpX4RA7rP53EtYcQL1X0',
    appId: '1:640159568985:ios:c0cd7966bdb3ae9f34cd48',
    messagingSenderId: '640159568985',
    projectId: 'live-tracking-b76c0',
    storageBucket: 'live-tracking-b76c0.firebasestorage.app',
    iosBundleId: 'com.example.geoLiveTracking',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrhYG6Wmb3irNhDeaurw_mw2lUFYyvjK0',
    appId: '1:640159568985:web:d72e12fbc10c6d4334cd48',
    messagingSenderId: '640159568985',
    projectId: 'live-tracking-b76c0',
    authDomain: 'live-tracking-b76c0.firebaseapp.com',
    storageBucket: 'live-tracking-b76c0.firebasestorage.app',
    measurementId: 'G-7CMFMKZYCW',
  );
}
