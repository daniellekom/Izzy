import 'package:flutter/material.dart';
import 'package:golden_hour/screens/shopnow/shop_now.dart';
import 'package:golden_hour/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple.shade400,
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple.shade400)),
      routes: {
        "/" : (context) => const SplashScreen(),
        ShopNow.routeName : (context) => const ShopNow(),
      },
      // home: const SplashScreen(),
    );
  }
}


