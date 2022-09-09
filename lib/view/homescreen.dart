import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '';
import 'package:flutter/material.dart';

import '../Model/respimodel.dart';
import '../provider/recpiprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    RespiProvider().callRespiApi();
  super.initState();

}

  @override
  Widget build(BuildContext context) {

    String title=context.read<RespiProvider>().title;
    print(title);
    var screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height*1,
       child: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: screenSize.height*0.2,
               width: screenSize.width*1,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: NetworkImage("https://spoonacular.com/recipeImages/716429-556x370.jpg"),
                   fit: BoxFit.fill,
                 )
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 child: Column(
                   children: [
                     Container(
                         width:screenSize.width*1,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text("title:"),
                             Text(title,style: TextStyle(color: Colors.red),),
                           ],
                         )),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                           width:screenSize.width*1,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text("data:"),
                               Text("data"),
                             ],
                           )),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                           width:screenSize.width*1,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Text("data:"),
                               Text("data"),
                             ],
                           )),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                           width:screenSize.width*1,
                           child: Text("data")),
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
      ),
    );
  }
}
