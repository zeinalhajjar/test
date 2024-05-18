import 'package:admin/introduction/spalsh.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,

/*
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFF53B175)),
        useMaterial3: true,
      ),
*/

    );
  }
}