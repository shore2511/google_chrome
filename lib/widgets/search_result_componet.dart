import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponet extends StatefulWidget {
  final String link;
  final String text;
  final String linkToGo;
  final String desc;
  const SearchResultComponet({
    super.key,
    required this.link,
    required this.text,
    required this.linkToGo,
    required this.desc
  });

  @override
  State<SearchResultComponet> createState() => _SearchResultComponetState();
}

class _SearchResultComponetState extends State<SearchResultComponet> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.link),
        Padding(
          padding: EdgeInsets.only(bottom: 0),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              final Uri url = Uri.parse(widget.linkToGo);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                // Handle the error
                print('Could not launch ${widget.linkToGo}');
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.link,
                  style: const TextStyle(fontSize: 14, color: Color(0xFF202124)),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: _showUnderline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(widget.desc, style: const TextStyle(
          fontSize: 14,
          color: primaryColor
        ),),
        const SizedBox(height:10 ,)
      ],
    );
  }
}