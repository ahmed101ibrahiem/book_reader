import 'package:book_reader/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Reader',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      home: const SplashView(

      ),
    );
  }
}
