import 'package:flutter/material.dart';
import './Component11.dart';

class AndroidMobile1 extends StatelessWidget {
  AndroidMobile1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 373.0,
            height: 649.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(21.0, 52.0),
            child: Container(
              width: 122.0,
              height: 91.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                color: const Color(0xff6c63ff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(211.0, 59.0),
            child: Component11(),
          ),
        ],
      ),
    );
  }
}
