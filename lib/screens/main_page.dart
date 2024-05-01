import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ninja/screens/page_1/1.21%20Explore%20Menu%20With%20Filter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/screens/page_2/1.22%20Message.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<MainPage> {
  static int _selectedPage = 0;

  final List<Widget> pages = [
    ExploreMenu(),
    Placeholder(),
    Message(),
    Placeholder(),
  ];

  changePage(index) => setState(() => _selectedPage = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: pages[_selectedPage]),

          Container(
            width: 355.w,
            height: 74.h,
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 8.h,
                  offset: const Offset(1, 0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => changePage(0),
                  child: SvgPicture.asset(
                    'assets/icons/home${_selectedPage == 0 ? '2' : ''}.svg',
                  ),
                ),
                SvgPicture.asset('assets/icons/profile.svg'),
                SvgPicture.asset('assets/icons/cart.svg'),
                GestureDetector(
                  onTap: () => changePage(2),
                  child: SvgPicture.asset(
                    'assets/icons/chat${_selectedPage == 2 ? '2' : ''}.svg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
