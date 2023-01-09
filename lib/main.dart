import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "News",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
