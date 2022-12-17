import 'package:flutter/material.dart';
import 'package:google_ads/main_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
        )
      ),
      home: const MainScreen(),
    );
  }
}
