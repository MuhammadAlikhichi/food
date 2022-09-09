import 'dart:convert';

import 'package:http/http.dart' as http;
class RespiServices{
  final url="https://api.spoonacular.com/recipes/716429/information?apiKey=76b629a63e9746fa89d8bc75d80c989e&includeNutrition=false";
 Future<dynamic> getRespiData() async{
     var response=await http.get(Uri.parse(url),headers:{
      'Content-Type': 'application/json',
      'APIKey': '76b629a63e9746fa89d8bc75d80c989e'
    },);
    // print(response.body);
   var request_body=jsonDecode(response.body);
   return request_body;
  }
}