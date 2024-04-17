import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mockups/constants/constants.dart';
import 'package:mockups/pages/page_two/widgets/custom_button_tinder.dart';
import 'package:mockups/pages/page_two/widgets/custom_terms_text.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Constants.linearAppColorOne, Constants.linearAppColortwo],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topLeft,
            ),
            Text(
              'tinder',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            CustomTermsText(),
            SizedBox(
              height: 30,
            ),
            CustomButtonTinder(
              title: 'SIGN IN WITH APPLE',
              titleColor: Colors.white,
              icon: Icons.apple,
            ),
            CustomButtonTinder(
                title: 'SIGN IN WITH FACEBOOK',
                titleColor: Colors.white,
                icon: Icons.facebook),
            CustomButtonTinder(
                title: 'SIGN IN WITH PHONE NUMBER',
                titleColor: Colors.white,
                icon: Icons.chat_bubble),
            SizedBox(
              height: 20,
            ),
            Text(
              'Trouble signing in?',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
