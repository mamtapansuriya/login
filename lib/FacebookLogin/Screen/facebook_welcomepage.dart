import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googlesignin_without_firebase/FacebookLogin/Controller/facebook_controller.dart';
import 'package:sizer/sizer.dart';

class FacebookWelcome extends StatelessWidget {
  FacebookWelcome({Key? key}) : super(key: key);
  FacebookContoller _facebookContoller = Get.put(FacebookContoller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(_facebookContoller.userData['name'] ?? "Welcome to Facebook Login"),
        centerTitle: true,
        actions: [
          RaisedButton(
            onPressed: () {
              _facebookContoller.facebookAuth.logOut();
              Get.back();
            },
            child: const Text("LogOut"),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 15.w,
                  backgroundImage: NetworkImage(_facebookContoller.userData['picture']['data']['url'] ??
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkbYw73-X3jsq5RY-o2BpqIVTuf7aH4DDCXg&usqp=CAU"),
                ),
                Text(
                  _facebookContoller.userData['name'].toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Text(_facebookContoller.userData["email"].toString())
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
