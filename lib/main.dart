import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/screens/main_page.dart';
import 'package:food_ninja/screens/page_3/1.23%20chat_details.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const MainPage(),
            routes: {
              '/chatDetails': (context) => const ChatDetails(),
            },
          );
        });
  }
}
