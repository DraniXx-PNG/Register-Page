import 'package:get/get.dart';
import 'package:latihan1/Pages/calculator_page.dart';
import 'package:latihan1/Pages/football_edit_pages.dart';
import 'package:latihan1/Pages/football_pages.dart';
import 'package:latihan1/Pages/home_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayer, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballedit, page: () => FootballEditPage()),
    GetPage(name: AppRoutes.home, page: () => HomePage())
  ];

}