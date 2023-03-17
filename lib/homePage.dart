import 'package:flutter/material.dart';
import 'dino.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
// initialize variables
  double dinoXaxis = -0.5;
  double dinoYaxis = 1;
  double dinoWidth = 0.2;
  double dinoHeight = 0.4;

  //cactus values
  double cactusXaxis = 1;
  double cactusYaxis = 1;
  double cactusWidth = 0.1;
  double cactusHeight = 0.4;

  //jump var

  double time = 0;
  double height = 0;
  double gravity = 9.8;
  double velocity = 5;

  //game settings
  bool gamestarted = false;
  bool midJmp = false; //prevents double jump
  bool gameOver = false;
  int score = 0;
  int highScore = 0;
  bool dinopassedcactus = false;

  //methods in playing
  void startGame() {}

  void updateScore() {}

  void loopCactus() {}

  bool detectCollision() {
    return false;
  }

  //jump
  void jump() {}

  void resetJump() {}

  void playAgain() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: gameOver
            ? (playAgain)
            : (gamestarted ? (midJmp ? null : jump) : startGame),
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      child: Center(
                    child: Stack(
                      children: [
                        //tap to play

                        // TapToPlay(
                        //   gamestarted:gamestarted,
                        // ),
                        MyDino(
                            dinoXaxis: dinoXaxis,
                            dinoYaxis: dinoHeight,
                            dinoWidth: dinoWidth,
                            dinoHeight: dinoHeight),
                      ],
                    ),
                  )))
            ],
          ),
        ));
  }
}
