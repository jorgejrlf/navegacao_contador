import 'package:flutter/material.dart';
import 'package:navegacao_jorge/App/pages/page2.dart';

// ignore: camel_case_types
class page1 extends StatelessWidget {
  const page1({Key key, this.mesage}) : super(key: key);
  final Mesage mesage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.mesage._mensagem1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(this.mesage._mensagem1),
            FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Mesage {
  final String _mensagem1;
  Mesage(this._mensagem1, {String mesage});
}
