import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mockups/constants/constants.dart';
import 'package:mockups/pages/page_two/widgets/custom_arrow_back.dart';
import 'package:mockups/pages/page_two/widgets/custom_button_tinder.dart';
import 'package:mockups/pages/page_two/widgets/custom_terms_text.dart';

import 'widgets/custom_logo_tinder.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.9,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Constants.linearAppColorOne,
              Constants.linearAppColortwo,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.08,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: CustomArrowBack(),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogoTinder(),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.12,
            ),
            const CustomTermsText(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.04,
            ),
            const CustomButtonTinder(
              title: 'SIGN IN WITH APPLE',
              titleColor: Colors.white,
              icon: Icons.apple,
            ),
            const CustomButtonTinder(
                title: 'SIGN IN WITH FACEBOOK',
                titleColor: Colors.white,
                icon: Icons.facebook),
            const CustomButtonTinder(
                title: 'SIGN IN WITH PHONE NUMBER',
                titleColor: Colors.white,
                icon: CupertinoIcons.chat_bubble_fill),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.03,
            ),
            const Text(
              'Trouble signing in?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
