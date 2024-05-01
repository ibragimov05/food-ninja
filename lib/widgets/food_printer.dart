import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodDisplayer extends StatelessWidget {
  String photoPath;
  String food;
  String info;
  String price;

  FoodDisplayer({
    super.key,
    required this.photoPath,
    required this.food,
    required this.info,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(15),
      width: 323.w,
      height: 87.h,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.05),
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(photoPath),
          ),
          Container(
            margin: const EdgeInsets.all(6),
            height: 70.h,
            width: 175.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food,
                  style: GoogleFonts.libreFranklin(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                    color: const Color(0xFF09051C),
                  ),
                ),
                Text(
                  info,
                  style: GoogleFonts.libreFranklin(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xFF3B3B3B),
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: GoogleFonts.libreFranklin(
              fontWeight: FontWeight.w600,
              color: const Color(0xFFFEAD1D),
              fontSize: 22.sp,
            ),
          )
        ],
      ),
    );
  }
}
