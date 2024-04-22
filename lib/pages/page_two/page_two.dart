import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mockups/constants/constants.dart';
import 'package:mockups/pages/page_two/widgets/custom_arrow_back.dart';
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
            colors: [
              Constants.linearAppColorOne,
              Constants.linearAppColortwo,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: CustomArrowBack(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(120),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        ClipOval(
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'tinder',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const CustomTermsText(),
            const SizedBox(
              height: 30,
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
                icon: Icons.chat_bubble),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Trouble signing in?',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
