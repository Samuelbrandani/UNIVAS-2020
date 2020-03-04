import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univas_edu_sistemas/Animations/FadeAnimarions.dart';

class ScheduledTests extends StatelessWidget {
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
                      "Procas agendadas",
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
