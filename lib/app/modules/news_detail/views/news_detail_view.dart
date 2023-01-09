import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../controllers/news_detail_controller.dart';
import 'package:news_app/app/constants/custom_text.dart';
import 'package:news_app/app/constants/api_constants.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  const NewsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(controller.data[0] ?? imageUrlFromGoogle),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: Get.back,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 33,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: SizedBox(
                  height: Get.height * .82,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container()),
                      Text(
                        controller.data[3],
                        style: CustomTextStyle.textStyleBold,
                      ),
                      const SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: Get.width * .5,
                            child: Text(
                              controller.data[4],
                              style: CustomTextStyle.textStyleRegular,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            DateFormat('yyyy.MM.dd')
                                .format(controller.data[2])
                                .toString(),
                            style: CustomTextStyle.textStyleRegular,
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Text(
                        controller.data[1] ?? "N/A",
                        style: CustomTextStyle.greyTextStyleBold14,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
