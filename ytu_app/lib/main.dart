import 'package:flutter/material.dart';
import 'text.dart';
import 'textcontrol.dart';

void main() {
  runApp(YTU());
}

class YTU extends StatefulWidget {
  YTU({Key? key}) : super(key: key);

  

  @override
  _YTUState createState() => _YTUState();
}

class _YTUState extends State<YTU> {
  var _index = 0;
  var _textList = [
    'What\'s your name?',
    'I don\'t know what I am doing',
    'Forget it'
  ];
  
  void _increment() {
    setState(() {
      _index = _index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
            ),
            body: _index < _textList.length
            ? Container(
              child: Column(
                children: [
                  text(
                    textinput: _textList[_index],
                  ),
                  TextControl(increment: _increment,index: _index,),
                ],
              ),
            ): Text("No more")
            )
            );
  }
}
