import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CustomLogo extends StatelessWidget {
  final double? topMargin;
  final double? bottomMargin;
  const CustomLogo({super.key, this.topMargin, this.bottomMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin ?? 0, bottom: bottomMargin ?? 0),
      height: 100,
      width: 100,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Constants.prymaryAppColor,
                  borderRadius: BorderRadius.circular(60),
                ),
                height: 46,
                width: 46,
              ),
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Constants.prymaryAppColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
                height: 46,
                width: 46,
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Constants.prymaryAppColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(90),
                bottomLeft: Radius.circular(90),
              ),
            ),
            height: 100,
            width: 46,
          )
        ],
      ),
    );
  }
}
