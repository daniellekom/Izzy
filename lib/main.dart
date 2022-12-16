import 'package:flutter/material.dart';

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
        backgroundColor: Colors.yellow,
      ),
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
        backgroundColor: Colors.lightGreenAccent,
        title: Center(
            child: Text(
          "izzy!",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            decorationThickness: 2.00,
            color: Colors.pink.shade200,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      body: Row(
        children: [
          Flexible(
            child: Row(
              children: [
                Column(
                  children: [
                    Text("First Name"),
                    SizedBox(width: 150,
                      child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Last Name"),
                    SizedBox(width: 150,
                      child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
