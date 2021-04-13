import 'package:flutter/material.dart';
import 'package:navegacao_jorge/App/pages/page1.dart';
import 'package:navegacao_jorge/App/shared/widgets/FloatingActionButton/widgets.text.default.dart';

class Mycontador extends StatefulWidget {
  Mycontador({Key key}) : super(key: key);
  @override
  _MycontadorState createState() => _MycontadorState();
}

class _MycontadorState extends State<Mycontador> {
  int count = 0;

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
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/page.home': (context) => Mycontador(),
        '/ page1': (context) => page1(),
      },
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
          body: new Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wiggetText(
                  count: count,
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      child: Text('Reset'),
                      onPressed: zerar,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: RaisedButton(
                        child: Text('pagina 2'),
                        onPressed: () {
                          Mesage mesage =
                              new Mesage('A pagina anterior era a home');
                          Navigator.pushNamed(context, '/page1',
                              arguments: mesage);
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
