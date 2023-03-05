import 'package:ceremo/utils/screens/home_screen.dart';
import 'package:ceremo/utils/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'utils/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
// ...
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'signup_screen',
    routes: {
      'login_screen': (context) => LoginPage(),
      'home_screen': (context) => HomePage(),
      'signup_screen': (context) => SignupPage()
    },
  ));
}
