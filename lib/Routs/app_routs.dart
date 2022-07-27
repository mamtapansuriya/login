import 'package:get/get.dart';
import 'package:googlesignin_without_firebase/FacebookLogin/Screen/facebook_welcomepage.dart';
import 'package:googlesignin_without_firebase/home_page.dart';
import 'package:googlesignin_without_firebase/GoogleLogin/Screen/welcome_page.dart';

class AppRouts {
  static const homePage = "/homePage";
  static const welcomepage = "/welcomePage";
  static const fbWelcome = "/fbWelcome";

  static final pages = [
    GetPage(name: AppRouts.homePage, page: () => HomePage()),
    GetPage(name: AppRouts.welcomepage, page: () => WelcomePage()),
    GetPage(name: AppRouts.fbWelcome, page: () => FacebookWelcome()),
  ];
}
