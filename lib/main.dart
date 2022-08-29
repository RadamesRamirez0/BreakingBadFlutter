import 'package:breakingbad/src/pages/detail/detail_page.dart';
import 'package:breakingbad/src/pages/home/home_page.dart';
import 'package:breakingbad/src/providers/characters_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CharacterProvider(),
      child: MaterialApp(
          title: 'Breaking Bad App',
          initialRoute: 'home',
          routes: {
            'home': (context) => const HomePage(),
            'detail': (context) => const DetailPage()
          }),
    );
  }
}
