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
    apiKey: 'AIzaSyDBw25KTz246HUBtd0sBN_YB2il3opyz7o',
    appId: '1:368391568879:web:982b314fe9138fa457ca1a',
    messagingSenderId: '368391568879',
    projectId: 'ngupiid-47f9f',
    authDomain: 'ngupiid-47f9f.firebaseapp.com',
    storageBucket: 'ngupiid-47f9f.firebasestorage.app',
    measurementId: 'G-507JBM5W1S',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDu_6Nvox9pcSQpqBqbkV8YGpxDg3swDTc',
    appId: '1:368391568879:android:b124d938330a07d957ca1a',
    messagingSenderId: '368391568879',
    projectId: 'ngupiid-47f9f',
    storageBucket: 'ngupiid-47f9f.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALW6t4ad3Vr6lDxraUr3iUNqp2NdAbVMY',
    appId: '1:368391568879:ios:3e04e1df34618c9b57ca1a',
    messagingSenderId: '368391568879',
    projectId: 'ngupiid-47f9f',
    storageBucket: 'ngupiid-47f9f.firebasestorage.app',
    iosBundleId: 'com.nurhakiki.ngupiid',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDBw25KTz246HUBtd0sBN_YB2il3opyz7o',
    appId: '1:368391568879:web:4fe14dabbb2bf72c57ca1a',
    messagingSenderId: '368391568879',
    projectId: 'ngupiid-47f9f',
    authDomain: 'ngupiid-47f9f.firebaseapp.com',
    storageBucket: 'ngupiid-47f9f.firebasestorage.app',
    measurementId: 'G-53KQXR4W09',
  );
}
