import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Customize Light Theme
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.orange, brightness: .light),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange,
        ),
      ),
      // Customize Dark Theme
      darkTheme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepOrange, brightness: .dark),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepOrange,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
