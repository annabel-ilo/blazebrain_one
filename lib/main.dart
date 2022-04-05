import 'package:blazebrain_one/constants/routes.dart';
import 'package:blazebrain_one/firebase_options.dart';
import 'package:blazebrain_one/views/home_page.dart';
import 'package:blazebrain_one/views/login_page.dart';
import 'package:blazebrain_one/views/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        signupRoute: (context) => const SignupView(),
        homepageRoute: (context) => const HomePage(),
      },
    );
  }
}
