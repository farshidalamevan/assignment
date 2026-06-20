import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), navigationToHomeScreen);
  }

  void navigationToHomeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => StudentProScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Card(
                child: SizedBox(
                  height: 350.h,
                  width: 280.w,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,

                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: .center,
                          mainAxisSize: .min,
                          spacing: 10,
                          children: [
                            Stack(children: [CircleAvatar(radius: 60)]),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                height: 16.h,
                                width: 120.w,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                height: 16.h,
                                width: 120.w,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                height: 16.h,
                                width: 120.w,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 35.h,
                              width: double.infinity,
                              child: ElevatedButton(onPressed: () {}, child: null),
                            ),
                            SizedBox(height: 10),
                            SizedBox(
                              height: 35.h,
                              width: double.infinity,
                              child: ElevatedButton(onPressed: () {}, child: null),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
