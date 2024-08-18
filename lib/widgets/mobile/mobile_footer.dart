import 'package:flutter/material.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FooterText(title: 'About'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'Advertising'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'Business'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'How Search Works'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'Privacy'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'Terms'),
        SizedBox(
          height: 10,
        ),
        FooterText(title: 'Settings'),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
