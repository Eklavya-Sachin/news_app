import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../constants/api_constants.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';
import '../controllers/news_controller.dart';
import '../../../constants/custom_text.dart';
import 'package:news_app/app/widgets/news_card.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appGreyColor,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColors.appBarColor,
        titleTextStyle: CustomTextStyle.textStyleBold,
        title: const Text(
          'HEADLINES',
          style: TextStyle(
            fontFamily: AppFonts.robotoSlab,
            fontWeight: FontWeight.w700,
            color: AppColors.boldTextColor,
            fontSize: 29,
            letterSpacing: 4.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.newsArticles[0].articles?.length ?? 100,
                itemBuilder: (context, index) => InkWell(
                  onTap: () => controller.newsDetail(index),
                  child: NewsCard(
                    newsBgImage: controller
                            .newsArticles[0].articles?[index].urlToImage ??
                        imageUrlFromGoogle,
                    title: controller.newsArticles[0].articles?[index].title ??
                        "NA",
                    newsPublisher: controller
                            .newsArticles[0].articles?[index].source?.name ??
                        "NA",
                    publishedAt: DateTime.parse(
                      controller.newsArticles[0].articles?[index].publishedAt
                              .toString() ??
                          "N/A",
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
