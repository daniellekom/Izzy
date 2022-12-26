import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:golden_hour/screen_one.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.deepPurple.shade400,
          appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple.shade400)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.network(
        fit: BoxFit.fill,
        width: window.physicalSize.width,
        height: window.physicalSize.height,
        "https://images.urbndata.com/is/image/UrbanOutfitters/69191955_030_b?&fit=constrain&fmt=webp&qlt=80&wid=1080",
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0,),
          child: Text(
            'Gifts for the Holidays',
            style: GoogleFonts.londrinaOutline(fontSize: 50, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 330.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const ScreenOne();
                  }));
                },
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: const Text(
                  textAlign: TextAlign.center,
                  "SHOP NOW",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ])

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

// OutlinedButton(onPressed: (){
//             Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//               return NewScreen();
//             },));
//           }, child: Text("navigate"))
// }
