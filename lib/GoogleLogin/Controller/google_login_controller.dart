import 'dart:developer';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googlesignin_without_firebase/Routs/app_routs.dart';

class GoogleLoginController extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn();
  Future<void> googleLogin() async {
    try {
      final result = await googleSignIn.signIn();
      if (result != null) {
        Get.toNamed(AppRouts.welcomepage);
      }
      print("google login");
      log(">>>>>>>>>>>>>>>$result");
    } catch (error) {
      print(error);
    }
  }
}
