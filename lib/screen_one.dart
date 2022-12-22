import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MyHomePage(title: '',);
              },));
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [IconButton(onPressed: () {

          }, icon: Icon(Icons.arrow_forward))
          ],
        ),
        body: Column(
        children: []
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
