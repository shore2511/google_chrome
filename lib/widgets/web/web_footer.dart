import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    FooterText(title: 'About'),
                SizedBox(height: 10,),
                FooterText(title: 'Advertising'),
                SizedBox(height: 10,),
                FooterText(title: 'Business'),
                SizedBox(height: 10,),
                FooterText(title: 'How Search Works'),
                SizedBox(height: 10,),
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FooterText(title: 'Privacy'),
                SizedBox(height: 10,),
                FooterText(title: 'Terms'),
                SizedBox(height: 10,),
                FooterText(title: 'Settings'),
                SizedBox(height: 10,),

              ],

            ),
          ],
        ),
      ),
    );
  }
}
