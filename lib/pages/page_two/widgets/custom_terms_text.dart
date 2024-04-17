import 'package:flutter/material.dart';

class CustomTermsText extends StatelessWidget {
  const CustomTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: const Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: 'By tapping Create Account or Sign In, you agree to our ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white),
            ),
            TextSpan(
              text: '. Learm how we process your data in our ',
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
