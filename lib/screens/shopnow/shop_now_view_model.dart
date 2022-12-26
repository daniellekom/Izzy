import 'package:stacked/stacked.dart';

class ShopNowViewModel extends BaseViewModel {

  bool displaySearchField = false;
  String _query = "";

  void clickSearch(){
    displaySearchField = !displaySearchField;
    notifyListeners();
  }

  void setQuery(String input) {
    _query = input;
  }

  void startSearch(){

    print("start search $_query");
  }

}