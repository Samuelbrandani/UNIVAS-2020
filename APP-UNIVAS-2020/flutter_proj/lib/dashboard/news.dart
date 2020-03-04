import 'package:flutter/material.dart';
import 'package:flutter_proj/Animations/HeroImage.dart';
import '../Animations/FadeAnimarions.dart';

class News extends StatelessWidget {
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
                      "Notícias e destaques",
                      style: TextStyle(
                          color: _textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              FadeAnimation(
                  0.60,
                  makeItem(
                      image: 'assets/images/one_news.jpg',
                      tag: '1',
                      context: context)),
              FadeAnimation(
                  0.65,
                  makeItem(
                      image: 'assets/images/two_news.jpg',
                      tag: '2',
                      context: context)),
              FadeAnimation(
                  0.70,
                  makeItem(
                      image: 'assets/images/tree_news.jpg',
                      tag: '3',
                      context: context)),
            ],
          ),
        )
      ],
    ));
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HeroImage(
                        image: image,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
        ),
      ),
    );
  }
}
