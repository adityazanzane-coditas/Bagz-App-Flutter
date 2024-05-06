import 'package:bagz_app/features/presentation/pages/home_page.dart';
import 'package:bagz_app/features/presentation/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appThemeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
