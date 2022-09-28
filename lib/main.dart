// import 'package:doctor_app/screens/account_page.dart';
// import 'package:doctor_app/screens/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'screens/signin_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medev',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      // home: const Home(),
      home: const SplashScreen(),
    );
  }
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/1.png"),
                )
              ),
            ),
            const Text( "Medev" ,style: TextStyle(fontSize:50,fontWeight: FontWeight.bold),)
          ],
        ),
        backgroundColor: Colors.lightBlueAccent,
        nextScreen: const SignInScreen(),
          splashTransition: SplashTransition.sizeTransition,
          // pageTransitionType: PageTransitionType.downToUp,
          splashIconSize:600,

    );
  }
}
