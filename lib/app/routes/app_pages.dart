import 'package:get/get.dart';
import '../modules/news/views/news_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news_detail/views/news_detail_view.dart';
import '../modules/news_detail/bindings/news_detail_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL,
      page: () => NewsDetailView(),
      binding: NewsDetailBinding(),
    ),
  ];
}
