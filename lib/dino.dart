import 'package:flutter/material.dart';

class MyDino extends StatelessWidget {
  final double dinoXaxis;
  final double dinoYaxis;
  final double dinoWidth;
  final double dinoHeight;

  MyDino({
    required this.dinoXaxis,
    required this.dinoYaxis,
    required this.dinoWidth,
    required this.dinoHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment((2 * dinoXaxis + dinoWidth) / (2 - dinoWidth),
          (2 * dinoYaxis + dinoHeight) / (2 - dinoHeight)),
      child: Container(
          height: MediaQuery.of(context).size.height * 2 / 3 * dinoHeight,
          width: MediaQuery.of(context).size.width * dinoWidth / 2,
          child: Image.asset(
            'assets/images/dino.png',
            fit: BoxFit.fill,
          )),
    );
  }
}
