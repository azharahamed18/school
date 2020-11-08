import 'package:flutter/material.dart';

class Component11 extends StatelessWidget {
  Component11({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 138.0,
          height: 84.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
        ),
      ],
    );
  }
}
