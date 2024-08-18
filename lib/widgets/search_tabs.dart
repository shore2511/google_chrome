import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            text: 'All',
            icon: Icons.search,
          ),
          SizedBox(width: 20,),
          SearchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(width: 20,),
          SearchTab(
            text: 'Maps',
            icon: Icons.map,
          ),
          SizedBox(width: 20,),
          SearchTab(
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(width: 20,),
          SearchTab(
            text: 'Shopping',
            icon: Icons.shopping_cart,
          ),
          SizedBox(width: 20,),
          SearchTab(

            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(width: 20,),

        ],
      ),
    );
  }
}
