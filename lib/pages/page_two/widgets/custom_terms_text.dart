import 'package:flutter/material.dart';

class CustomTermsText extends StatelessWidget {
  const CustomTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    const double textsize = 12;
    return const SizedBox(
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our\n ',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: textsize),
          children: [
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white),
            ),
            TextSpan(
              text: '. Learm how we process your data in\n our ',
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.white),
            ),
            TextSpan(
              text: 'Cookies Policy.',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
