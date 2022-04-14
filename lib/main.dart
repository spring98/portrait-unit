import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'home.dart';

void main() async {
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 640),
      builder: () => GetMaterialApp(
        home: const Home(),
        builder: (context, widget) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!);
        },
      ),
    ),
  );
}
