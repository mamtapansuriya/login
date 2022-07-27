import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googlesignin_without_firebase/GoogleLogin/Controller/google_login_controller.dart';

import 'package:sizer/sizer.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);
  GoogleLoginController _loginController = Get.put(GoogleLoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Google Login"),
        actions: [
          RaisedButton(
            onPressed: () {
              _loginController.googleSignIn.signOut();
              Get.back();
            },
            child: const Text("Sign Out"),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 15.w,
                backgroundImage: NetworkImage(_loginController.googleSignIn.currentUser!.photoUrl ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbYw73-X3jsq5RY-o2BpqIVTuf7aH4DDCXg&usqp=CAU"),
              ),
              Text(
                _loginController.googleSignIn.currentUser!.email.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text(_loginController.googleSignIn.currentUser!.id.toString())
            ],
          ),
        ),
      ),
    ));
  }
}
