import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:lotto_mobile/views/onboarding.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfire_ui/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lotto',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 22, 18, 27)),
          useMaterial3: true,
        ),
        home: const MyHomePage(
          title: 'Lotto',
        ));
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          // ...
          return const SignInScreen(
              // headerBuilder: (context, constraints, _) {
              //   return Padding(
              //     padding: const EdgeInsets.all(20),
              //     child: AspectRatio(
              //       aspectRatio: 1,
              //       child: Image.network(
              //           'https://firebase.flutter.dev/img/flutterfire_300x.png'),
              //     ),
              //   );
              // },
              providerConfigs: [PhoneProviderConfiguration()]);
        }

        // Render your application if authenticated
        return const MyApp();
      },
    );
  }
}
