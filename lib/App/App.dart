import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navegacao_jorge/App/pages/page.home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: Mycontador(),
    );
  }

  @override
  State<StatefulWidget> createState() => throw UnimplementedError();
}
