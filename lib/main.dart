import 'package:flutter/material.dart';
import 'package:flutter_notes_application/Pages/home_page.dart';
import 'package:flutter_notes_application/Pages/school_page.dart';
import 'package:flutter_notes_application/Pages/splash_screen.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          '/splash_screen': (BuildContext context) => SplashScreen(),
          '/school_page': (BuildContext context) => SchoolPage(),
          '/home_page': (BuildContext context) => HomePage(),
        });
  }
}
