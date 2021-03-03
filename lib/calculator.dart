import 'package:flutter/material.dart';

import './widgets/CalButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key key}) : super(key: key);
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _history = '';
  String _expression = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      _history,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      _expression,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF545F61),
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0, 1.0),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalButton(
                      text: 'AC',
                      fillColor: 0xFF6C807F,
                      textSize: 20,
                    ),
                    CalButton(
                      text: 'C',
                      fillColor: 0xFF6C807F,
                    ),
                    CalButton(
                      text: '%',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalButton(
                      text: '/',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalButton(
                      text: '7',
                      fillColor: 0xFF6C807F,
                      textSize: 20,
                    ),
                    CalButton(
                      text: '8',
                      fillColor: 0xFF6C807F,
                    ),
                    CalButton(
                      text: '9',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalButton(
                      text: '*',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalButton(
                      text: '4',
                      fillColor: 0xFF6C807F,
                      textSize: 20,
                    ),
                    CalButton(
                      text: '5',
                      fillColor: 0xFF6C807F,
                    ),
                    CalButton(
                      text: '6',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalButton(
                      text: '-',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalButton(
                      text: '1',
                      fillColor: 0xFF6C807F,
                      textSize: 20,
                    ),
                    CalButton(
                      text: '2',
                      fillColor: 0xFF6C807F,
                    ),
                    CalButton(
                      text: '3',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                    CalButton(
                      text: '+',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalButton(
                      text: '.',
                      fillColor: 0xFF6C807F,
                      textSize: 20,
                    ),
                    CalButton(
                      text: '0',
                      fillColor: 0xFF6C807F,
                    ),
                    CalButton(
                      text: '00',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                      textSize: 20,
                    ),
                    CalButton(
                      text: '=',
                      fillColor: 0xFFFFFFFF,
                      textColor: 0xFF65BDAC,
                    ),
                  ],
                ),
              ]),
        ));
  }
}
