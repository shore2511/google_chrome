import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab(
      {super.key,
      required this.icon,
      this.isActive = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? Colors.blue : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 15, color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        isActive ? Container(
          height: 3,
          width: 40,
          color: Colors.blue,
        ): Container(

        )
      ],
    );
  }
}
