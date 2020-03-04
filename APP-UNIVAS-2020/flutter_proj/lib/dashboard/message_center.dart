import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj/Animations/FadeAnimarions.dart';

class MessageCenter extends StatelessWidget {
  final Color _textColor = Colors.grey[900];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30),
              child: FadeAnimation(
                  0.50,
                  SizedBox(
                    child: Text(
                      "Central de mensagens",
                      style: TextStyle(
                          color: _textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ],
    ));
  }
}
