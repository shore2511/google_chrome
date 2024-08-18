import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/searc_button.dart';


class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearcButton(title: 'Google Serach'),
            SizedBox(width: 10,),
            SearcButton(title: 'I\'m feeling Lucky'),

          ],
        )
      ],
    );
  }
}
