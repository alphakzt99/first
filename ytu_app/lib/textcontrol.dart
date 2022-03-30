import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback increment;
  final int index;
  const TextControl({Key? key, required this.increment,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(onPressed: increment, child: Text("Change")),
    );
  }
}
