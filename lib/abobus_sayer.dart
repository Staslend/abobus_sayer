import 'package:abobus_sayer/soundPlayer.dart';
import 'package:flutter/material.dart';
import 'goldenRatio.dart';

SoundPlayer sp = SoundPlayer();

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  var pressed = 0;
  String smallText = "Press It!\n";
  String largeText = "NOW!!!";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/image/flag.png").image,
              fit: BoxFit.fill)),
      child: Center(
        child: ElevatedButton(
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: smallText,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: largeText,
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFFD0006),
              shadowColor: Color(0xFF002249),
              fixedSize: Size(getLow(1, MediaQuery.of(context).size.height),
                  getLow(1, MediaQuery.of(context).size.height)),
              shape: const CircleBorder()),
          onPressed: () {
            sp.playLocal();
            pressed++;
            switch (pressed) {
              case 1:
                setState(() {
                  smallText = 'One more\n';
                  largeText = 'TIME!!!';
                });
                break;
              case 2:
                setState(() {
                  smallText = 'Press it\n';
                  largeText = 'MORE!!!';
                });

                break;
              case 7:
                setState(() {
                  smallText = 'Oh YEEE\n';
                  largeText = 'EEEEEEE!!';
                });

                break;

              case 15:
                setState(() {
                  smallText = 'DONT\n';
                  largeText = 'STOP!!!';
                });

                break;

              case 30:
                setState(() {
                  smallText = 'YOU LIVE\n';
                  largeText = 'JUST TO PRESS!!!';
                });

                break;
            }
          },
        ),
      ),
    );
  }
}
