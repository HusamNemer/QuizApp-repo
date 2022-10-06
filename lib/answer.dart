import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String str;
  const Answer(this.selectHandler,this.str);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:
          ElevatedButton(onPressed: selectHandler, child:  Text(str)),
    );
  }
}
