import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vimbu/Utils/appconstant.dart';
import 'package:vimbu/Utils/appimages.dart';
import 'package:vimbu/View/splash_screens/splash_screen2.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 2), (){
       Get.to(()=>  const SplashScreenTwo());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: screenHeight*1,
        width: screenWidth*1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 88.h,
                child: Image.asset(AppImages.appLogo)),
            GestureDetector(
              onTap: (){
                setState(() {
                  AppConstant.darkTheme = true;
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Theme.of(context).backgroundColor,
                child: const Center(
                  child: Text("click"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
