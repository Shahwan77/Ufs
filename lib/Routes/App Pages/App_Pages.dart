import 'package:get/get.dart';
import 'package:ufs_technology/Presentations/Home/HomePage.dart';
import 'package:ufs_technology/Routes/App%20Routes/App_Routes.dart';

class AppPages{
  static var List = [
    GetPage(
      name: AppRoutes.Home, page: () => Homepage(),
    ),
  ];
}