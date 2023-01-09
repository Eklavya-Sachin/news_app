import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app/constants/custom_text.dart';

class NewsCard extends StatelessWidget {
  final String newsBgImage;
  final String newsTitle;
  final String newsAuthor;
  final String publishedAt;

  const NewsCard({
    super.key,
    required this.newsBgImage,
    required this.newsTitle,
    required this.newsAuthor,
    required this.publishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      width: Get.width,
      height: Get.height * .25,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(newsBgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
        child: Column(
          children: [
            Expanded(child: Container()),
            SizedBox(
              width: Get.width,
              child: Text(
                newsTitle,
                style: CustomTextStyle.textStyleRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        newsAuthor,
                        style: CustomTextStyle.greyTextStyleBold,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        publishedAt,
                        style: CustomTextStyle.greyTextStyleBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
