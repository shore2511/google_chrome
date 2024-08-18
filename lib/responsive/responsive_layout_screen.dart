import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayoutScreen ({super.key,
  required this.mobileScreenLayout,
    required this.webScreenLayout
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth <= 768){
        return mobileScreenLayout;
      }
      return webScreenLayout;
},);
  }
}
