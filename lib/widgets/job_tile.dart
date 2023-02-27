import 'package:flutter/material.dart';
import 'package:state_management_provider/pages/detail_page.dart';

import '../theme.dart';

class JobTile extends StatelessWidget {
  final String? name;
  final String? companyName;
  final String? companyLogo;

  const JobTile({
    super.key,
    this.name,
    this.companyName,
    this.companyLogo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            companyLogo ?? '',
            width: 44,
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? '',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  companyName ?? '',
                  style: greyTextStyle,
                ),
                const SizedBox(
                  height: 18,
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
