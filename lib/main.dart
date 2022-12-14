import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:googlesignin_without_firebase/Routs/app_routs.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Demo',
        initialRoute: AppRouts.homePage,
        getPages: AppRouts.pages,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      );
    });
  }
}
