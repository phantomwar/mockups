import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CustomLogo extends StatelessWidget {
  final double? topMargin;
  const CustomLogo({super.key, this.topMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin ?? 0),
      height: 120,
      width: 120,
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
                height: 56,
                width: 56,
              ),
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Constants.prymaryAppColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  ),
                ),
                height: 56,
                width: 56,
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
            height: 120,
            width: 56,
          )
        ],
      ),
    );
  }
}
