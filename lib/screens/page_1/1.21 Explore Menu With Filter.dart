import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/food_printer.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreMenu extends StatelessWidget {
  const ExploreMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            alignment: Alignment.topRight),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find Your\nFavorite Food',
                      style: GoogleFonts.libreFranklin(
                        fontWeight: FontWeight.w700,
                        fontSize: 31.sp,
                      ),
                    ),
                    Container(
                      width: 45.w,
                      height: 45.h,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.050),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: SvgPicture.asset('assets/icons/notification.svg'),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          bottom: 10, top: 10, left: 20, right: 20),
                      width: 267.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9A84D).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/search.svg'),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            'What do you want to order?',
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: const Color(0xFFDA6317).withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(13),
                      width: 49.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9A84D).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: SvgPicture.asset('assets/icons/filter.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17.h,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 92.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEAD1D).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Soup',
                        style: GoogleFonts.libreFranklin(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFDA6317),
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      SvgPicture.asset('assets/icons/close.svg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Popular Menu',
                  style: GoogleFonts.libreFranklin(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: const Color(0xFF09051C),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                FoodDisplayer(
                  photoPath: 'assets/images/menu.png',
                  food: 'Herbal Pancake',
                  info: 'Warung Herbal',
                  price: '\$7',
                ),
                FoodDisplayer(
                  photoPath: 'assets/images/menu2.png',
                  food: 'Fruit Salad',
                  info: 'Wijie Resto',
                  price: '\$5',
                ),
                FoodDisplayer(
                  photoPath: 'assets/images/menu3.png',
                  food: 'Green Noddle',
                  info: 'Noodle Home',
                  price: '\$15',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
