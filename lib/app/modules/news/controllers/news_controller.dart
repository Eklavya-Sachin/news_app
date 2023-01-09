import 'package:get/get.dart';
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
}
