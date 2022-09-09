import 'package:flutter/material.dart';
import 'package:food/Model/respimodel.dart';
import 'package:food/services/respiservices.dart';

class  RespiProvider with ChangeNotifier
{
   late String _title="a";
   List<ExtendedIngredient>? _ingreadents=[];

   List<ExtendedIngredient>? get ingreadents => _ingreadents;

  set ingreadents(List<ExtendedIngredient>? value) {
    _ingreadents = value;
    notifyListeners();
  }

  String get url => _url;

  set url(String value) {
    _url = value;
    notifyListeners();
  }

  String _url="";
   String _summery="";
   var _price =0;
   int _serving =1;
  String get title => _title;

  set title(String value) {
    _title = value;
    notifyListeners();

  }

   String get summery => _summery;

   set summery(String value) {
     _summery = value;
     notifyListeners();
   }

   dynamic get price => _price;

   set price(var value) {
     _price = value;
     notifyListeners();
   }

   int get serving => _serving;

   set serving(int value) {
     _serving = value;
     notifyListeners();
   }

  Future<dynamic> callRespiApi() async{
  var data=await RespiServices().getRespiData();
 // print(data);
  ///this line is use to serialize data
  Welcome welcome= Welcome.fromJson(data);
 // print(welcome);
  title=welcome.title??"";
  url=welcome.image??"https://www.slntechnologies.com/wp-content/uploads/2017/08/ef3-placeholder-image.jpg";
  price=welcome.pricePerServing?.toInt()??0;
  serving=welcome.servings??1;
  summery=welcome.summary??"";
  ingreadents =welcome.extendedIngredients;
}
}