import 'package:flutter/material.dart';
import 'package:food/provider/recpiprovider.dart';
import 'package:food/view/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RespiProvider()),],
      child:  MaterialApp(
        home: SafeArea(child: HomeScreen()),
      ),
    );
  }
}


