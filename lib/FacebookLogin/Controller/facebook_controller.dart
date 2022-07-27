import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:googlesignin_without_firebase/Routs/app_routs.dart';

class FacebookContoller extends GetxController {
  final FacebookAuth facebookAuth = FacebookAuth.instance;
  late Map<String, dynamic> userData;
  Future<void> facebookLogin() async {
    try {
      final LoginResult result = await facebookAuth.login(permissions: ['email']); // by default we request the email and the public profile
      if (result.status == LoginStatus.success) {
        final AccessToken accessToken = result.accessToken!;
        log("accessToken ===${accessToken.toJson()}");
        userData = await facebookAuth.getUserData();
        Get.toNamed(AppRouts.fbWelcome);
      } else {
        log("result.status ===${result.status}");
        log("result.message ===${result.message}");
      }
    } catch (e, st) {
      log("error ===${e} ===stack===$st");
    }
  }
}
