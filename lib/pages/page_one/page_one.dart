import 'package:flutter/material.dart';
import 'package:mockups/constants/constants.dart';
import 'package:mockups/pages/page_one/widgets/custom_button.dart';
import 'package:mockups/pages/page_one/widgets/custom_logo.dart';

import 'widgets/custom_title_page_one.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLogo(
              topMargin: MediaQuery.sizeOf(context).height * 0.2,
              bottomMargin: MediaQuery.sizeOf(context).height * 0.04,
            ),
            const CustomTitlePageOne(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.09,
            ),
            CustomButton(
              title: 'Sign Up with Email ID',
              titleColor: Colors.white,
              buttonColor: Constants.prymaryAppColor,
              onTap: () {
                Navigator.pushNamed(context, '/page_two');
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              icon: Image.asset(
                'assets/icons/logo_google_icon.png',
                height: 20,
              ),
              title: 'Sign Up with Google',
              titleColor: Colors.black,
              buttonColor: Colors.white,
              onTap: () => Navigator.pushNamed(context, '/page_test'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
