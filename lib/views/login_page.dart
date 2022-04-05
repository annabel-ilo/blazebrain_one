import 'package:blazebrain_one/constants/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/twitter_login.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: true,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Enter your email'),
          ),
          TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            controller: _password,
            decoration: const InputDecoration(hintText: 'Enter your password'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;

              try {
                UserCredential userCredential = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: email, password: password);
                Navigator.of(context).pushNamedAndRemoveUntil(
                  homepageRoute,
                  (route) => false,
                );
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  devtools.log('No user found the email.');
                } else if (e.code == 'wrong-password') {
                  devtools.log('Wrong password provided .');
                }
              }
            },
            child: const Text('Login'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                signupRoute,
                (route) => false,
              );
            },
            child: const Text('Not registered yet?  Signup here!'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Login with'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Future<UserCredential> signInWithGoogle() async {
                    // Trigger the authentication flow
                    final GoogleSignInAccount? googleUser =
                        await GoogleSignIn().signIn();

                    // Obtain the auth details from the request
                    final GoogleSignInAuthentication? googleAuth =
                        await googleUser?.authentication;

                    // Create a new credential
                    final credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth?.accessToken,
                      idToken: googleAuth?.idToken,
                    );

                    // Once signed in, return the UserCredential
                    return await FirebaseAuth.instance
                        .signInWithCredential(credential);
                  }
                },
                child: const Text('Google'),
              ),
              TextButton(
                onPressed: () {
//                   Future<UserCredential> signInWithTwitter() async {
//   // Create a TwitterLogin instance
//   final twitterLogin = new TwitterLogin(
//     apiKey: '<your consumer key>',
//     apiSecretKey:' <your consumer secret>',
//     redirectURI: '<your_scheme>://'
//   );

//   // Trigger the sign-in flow
//   final authResult = await twitterLogin.login();

//   // Create a credential from the access token
//   final twitterAuthCredential = TwitterAuthProvider.credential(
//     accessToken: authResult.authToken!,
//     secret: authResult.authTokenSecret!,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
// }
                },
                child: const Text('Twitter'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
