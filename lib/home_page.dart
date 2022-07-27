import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googlesignin_without_firebase/GoogleLogin/Controller/google_login_controller.dart';

import 'FacebookLogin/Controller/facebook_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  GoogleLoginController _loginController = Get.put(GoogleLoginController());
  FacebookContoller _facebookContoller = Get.put(FacebookContoller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await _loginController.googleLogin();
              },
              child: Text("Google Login"),
            ),
            ElevatedButton(
              onPressed: () async {
                await _facebookContoller.facebookLogin();
              },
              child: Text("FaceBook Login"),
            ),
          ],
        ),
      ),
    ));
  }
}
