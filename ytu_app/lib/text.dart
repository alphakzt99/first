import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String textinput;
  const text({Key? key,required this.textinput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(textinput),
    );
  }
}