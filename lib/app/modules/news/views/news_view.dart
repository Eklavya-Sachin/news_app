import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
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
        title: const Text('H E A D L I N E S'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: const NewsCard(
            newsBgImage:
                "https://www.androidauthority.com/wp-content/uploads/2023/01/Sony-Honda-Car-Afeela-CES-2023.jpg",
            newsTitle:
                "Would you buy an Afeela, the car made by Sony and Honda?",
            newsAuthor: "CNN",
            publishedAt: "2023-01-07T19:52:05Z",
          ),
        ),
      ),
    );
  }
}
