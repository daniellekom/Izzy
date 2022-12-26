
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'shopnow/shop_now.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Positioned.fill(
            child: Image.network(
              fit: BoxFit.fill,
              "https://images.urbndata.com/is/image/UrbanOutfitters/69191955_030_b?&fit=constrain&fmt=webp&qlt=80&wid=1080",
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Gifts for the Holidays',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.londrinaOutline(fontSize: 50, color: Colors.red, fontWeight: FontWeight.bold),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ShopNow.routeName);
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
                )
              ],
            ),
          ),
        ])

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



