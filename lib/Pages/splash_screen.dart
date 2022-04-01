import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_notes_application/Pages/home_page.dart';
import 'package:flutter_notes_application/Pages/school_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SchoolPage()))
            );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        body: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 600,
                color: Color.fromARGB(255, 31, 30, 30),
                child: Image.asset(
                  'assets/images/splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                child: new CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 31, 30, 30),
              color: Color.fromARGB(210, 109, 10, 167),
            ))
          ],
        ));
  }
}
