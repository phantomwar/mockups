import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CustomButtonTinder extends StatelessWidget {
  final String title;
  final Color titleColor;
  final IconData? icon;
  const CustomButtonTinder({
    super.key,
    required this.title,
    required this.titleColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 10,
            child: Icon(
              icon,
              color: titleColor,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: titleColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
