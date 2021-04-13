import 'package:flutter/material.dart';

// ignore: camel_case_types
class wiggetText extends StatefulWidget {
  final int count;
  const wiggetText({Key key, @required this.count}) : super(key: key);

  @override
  _wiggetTextState createState() => _wiggetTextState();
}

// ignore: camel_case_types
class _wiggetTextState extends State<wiggetText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '${widget.count}',
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
