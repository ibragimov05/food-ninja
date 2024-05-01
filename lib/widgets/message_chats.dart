import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessage extends StatelessWidget {
  String imagePath;
  String name;
  String info;
  String time;

  ChatMessage({
    super.key,
    required this.imagePath,
    required this.name,
    required this.info,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 335.w,
      height: 81.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF2437e3).withOpacity(0.04),
            spreadRadius: 5.r,
            blurRadius: 20.r,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(imagePath),
          Container(
            padding: const EdgeInsets.only(top: 8),
            height: 80.h,
            width: 170.w,
            // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.libreFranklin(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: const Color(0xFF09051C)),
                ),
                Text(
                  info,
                  style: GoogleFonts.libreFranklin(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: const Color(0xFF3B3B3B).withOpacity(0.3),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              children: [
                Text(
                  time,
                  style: GoogleFonts.libreFranklin(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: const Color(0xFF3B3B3B).withOpacity(0.3),
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
