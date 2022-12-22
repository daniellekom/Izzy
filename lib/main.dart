import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:golden_hour/screen_one.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class GoogleFonts {}

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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Center(
          child: Column(children: [
            Image.network(
                "https://images.urbndata.com/is/image/UrbanOutfitters/61404398_001_b?&fit=constrain&fmt=webp&qlt=80&wid=1080",
                fit:BoxFit.fitWidth),
            Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const ScreenOne();
                    }));
                  },
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "SHOP NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        )

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
