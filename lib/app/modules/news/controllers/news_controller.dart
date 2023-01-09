import 'package:get/get.dart';
import 'package:news_app/app/routes/app_pages.dart';
import '../../../models/news_model_model.dart';
import 'package:news_app/app/services/api_services.dart';

class NewsController extends GetxController {
  RxBool isLoading = true.obs;
  List<News> newsArticles = <News>[].obs;

  @override
  void onInit() {
    getAllNewsArticles();
    super.onInit();
  }

  Future<void> getAllNewsArticles() async {
    isLoading;
    final responseJson = await ApiServices.getAllNewsArticles();
    newsArticles.add(responseJson);
    isLoading.toggle();
  }

  void newsDetail(index) {
    Get.toNamed(
      Routes.NEWS_DETAIL,
      arguments: [
        newsArticles[0].articles?[index].urlToImage,
        newsArticles[0].articles?[index].description,
        newsArticles[0].articles?[index].publishedAt,
        newsArticles[0].articles?[index].title,
        newsArticles[0].articles?[index].source?.name,
      ],
    );
  }
}
