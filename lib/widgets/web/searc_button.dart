import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';

class SearcButton extends StatelessWidget {
  final String title;
  const SearcButton(
      {super.key,
      required this.title,});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(6)
        )
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10
      ),
      color: searchColor,
      elevation: 0,
      onPressed: () {   },
      child:Text(
        title,
      ) ,
    );
  }
}
