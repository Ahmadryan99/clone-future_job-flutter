import 'package:flutter/material.dart';
import 'package:state_management_provider/theme.dart';
import 'package:state_management_provider/widgets/job_tile.dart';

class CategoryPage extends StatelessWidget {
  final String? name;
  final String? imageUrl;

  const CategoryPage({super.key, this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 270,
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: defaultMargin,
          bottom: 30,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                // imageUrl,
                'assets/image_category2.png'),
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? '',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              '12,309 available',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget companies() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Companies',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            const JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'UI Designer',
              companyName: 'Instagram',
            ),
            const JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scientist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    Widget newStartups() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Startups',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const JobTile(
              companyLogo: 'assets/icon_google.png',
              name: 'Front-End Developer',
              companyName: 'Google',
            ),
            const JobTile(
              companyLogo: 'assets/icon_instagram.png',
              name: 'UI Designer',
              companyName: 'Instagram',
            ),
            const JobTile(
              companyLogo: 'assets/icon_facebook.png',
              name: 'Data Scientist',
              companyName: 'Facebook',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            companies(),
            newStartups(),
          ],
        ),
      ),
    );
  }
}
