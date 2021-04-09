import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Mycontador());
}

class Mycontador extends StatefulWidget {
  const Mycontador({Key key}) : super(key: key);

  @override
  _MycontadorState createState() => _MycontadorState();
}

int count = 0;

class _MycontadorState extends State<Mycontador> {
  void counter() {
    setState(() {
      count++;
    });
  }

  void subtrair() {
    setState(() {
      count--;
    });
  }

  void zerar() {
    setState(() {
      count = 0;
    });
  }

  void acrescentar2() {
    setState(() {
      count += 2;
    });
  }

  void subtrair2() {
    setState(() {
      count -= 2;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: Colors.blue,
        )),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meu contador'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                  style: TextStyle(fontSize: 30.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      child: Text('+1'),
                      onPressed: counter,
                    ),
                    FloatingActionButton(
                      child: Text('-1'),
                      onPressed: subtrair,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      child: Text('+2'),
                      onPressed: acrescentar2,
                    ),
                    FloatingActionButton(
                      child: Text('-2'),
                      onPressed: subtrair2,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
