import 'package:flutter/material.dart';

import 'package:mockups/constants/constants.dart';

class CustomLogoTinder extends StatelessWidget {
  const CustomLogoTinder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipOval(
              clipper: CustomClipWhiteOval(),
              child: Container(
                height: 45,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 4,
              top: -2,
              child: Container(
                height: 23,
                width: 13,
                decoration: BoxDecoration(
                  color: Constants.linearAppColorOne,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(90),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text(
          'tinder',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CustomClipWhiteOval extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 5, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
