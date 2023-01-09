import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/app/constants/custom_text.dart';

class NewsCard extends StatelessWidget {
  final String newsBgImage;
  final String title;
  final String newsPublisher;
  final DateTime? publishedAt;

  const NewsCard({
    super.key,
    required this.newsBgImage,
    required this.title,
    required this.newsPublisher,
    required this.publishedAt,
  });

  // final AssetImage cusBgImage = const AssetImage()

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      width: Get.width,
      height: Get.height * .28,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
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
            const Expanded(child: SizedBox()),
            SizedBox(
              width: Get.width,
              child: Text(
                title,
                style: CustomTextStyle.textStyleRegular,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: Get.width * .3,
                  child: Text(
                    newsPublisher,
                    style: CustomTextStyle.greyTextStyleBold12,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  DateFormat('yyyy.MM.dd').format(publishedAt!).toString(),
                  style: CustomTextStyle.greyTextStyleBold12,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
