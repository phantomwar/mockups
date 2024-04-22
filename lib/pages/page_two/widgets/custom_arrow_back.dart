import 'dart:math';
import 'package:flutter/material.dart';

class CustomArrowBack extends StatelessWidget {
  const CustomArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.05),
      width: 30,
      child: Column(
        children: [
          Transform.rotate(
            angle: -pi / 4,
            child: Container(
              width: 20,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Transform.rotate(
            angle: pi / 4,
            child: Container(
              width: 20,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
