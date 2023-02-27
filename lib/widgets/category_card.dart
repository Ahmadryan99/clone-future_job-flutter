import 'package:flutter/material.dart';
import 'package:state_management_provider/pages/category_page.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final String? name;
  final String? imageUrl;

  const CategoryCard({super.key, this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryPage(
              name: name ?? '',
              imageUrl: imageUrl ?? '',
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        margin: const EdgeInsets.only(right: defaultMargin),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl ?? '',
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            name ?? '',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }
}
