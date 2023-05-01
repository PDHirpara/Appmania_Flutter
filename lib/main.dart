import 'package:flutter/material.dart';
import 'package:lizzaa/Page/detailpage.dart';
import 'package:lizzaa/Page/homepage.dart';

import 'Page/cartpage.dart';
import 'Page/firstpage.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'first',
      routes: {
        'first': (context) => FirstPage(),
        'home': (context) => HomePage(),
        'detail': (context) => DetailPage(),
        'cart': (context) => CartPage()
      },
    );
  }
}
