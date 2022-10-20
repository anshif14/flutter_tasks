import 'package:flutter/material.dart';
class StackPage2 extends StatefulWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  State<StackPage2> createState() => _StackPage2State();
}

class _StackPage2State extends State<StackPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar()
      ,body: Stack(
      children: [
        Positioned(
          top: 1,
          child:
        Container(
          height: 150,
          width: 150,
          color: Color(0xff1e1479),

        ),
        ),
        Positioned(
          top: 150,
          left: 10,
          height: 120,
          width: 120,
          child:
        Container(
          height: 130,
          width: 130,
          color: Color(0xff120760),
        ),
        ),
        Positioned(
          top: 250,
          left: 20,
          height: 100,
          width: 100,
          child:
          Container(
            height: 130,
            width: 130,
            color: Color(0xff120760),
          ),
        ),
        Positioned(
          top: 350,
          left: 30,
          height: 80,
          width: 80,
          child:
          Container(
            height: 80,
            width: 80,
            color: Color(0xff120760),
          ),
        ),
        Positioned(
          top: 430,
          left: 45,
          height: 70,
          width: 50,
          child:
          Container(
            height: 80,
            width: 80,
            color: Color(0xff120760),
          ),
        ),
      ],
    ),
    );
  }
}

