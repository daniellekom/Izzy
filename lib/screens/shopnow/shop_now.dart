import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golden_hour/screens/shopnow/shop_now_view_model.dart';
import 'package:stacked/stacked.dart';

class ShopNow extends StatelessWidget {
  static const String routeName = "/shop_now";

  const ShopNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShopNowViewModel>.reactive(
      viewModelBuilder: () => ShopNowViewModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: model.displaySearchField
                ? TextFormField(onChanged: (input) => model.setQuery(input),
                onEditingComplete: () => model.startSearch(),
                textInputAction: TextInputAction.search)
                : const Text("New Arrivals"),
            actions: [
              IconButton(
                onPressed: () => model.clickSearch(),
                icon: const ClipOval(
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.search),
                        ))),
              )
            ],
            elevation: 0,
          ),

          body: Column(children: []),

          // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
