import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back2.png'),
            alignment: Alignment.topCenter,
          ),
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
                    children: [
                      Container(
                        width: 45.w,
                        height: 45.h,
                        padding: const EdgeInsets.all(15.5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9A84D).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: SvgPicture.asset('assets/icons/arrow_back.svg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Chat',
                    style: GoogleFonts.libreFranklin(
                      fontWeight: FontWeight.w700,
                      fontSize: 25.sp,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 347.w,
                    height: 93.h,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/person1.png'),
                        Container(
                          width: 160.w,
                          // color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Dianne Russell',
                                    style: GoogleFonts.libreFranklin(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF09051C),
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  SvgPicture.asset('assets/icons/online.svg'),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    'Online',
                                    style: GoogleFonts.libreFranklin(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF3B3B3B).withOpacity(0.3),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40.w,
                          height: 40.h,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF53E88B).withOpacity(0.3),
                                const Color(0xFF15BE77).withOpacity(0.3),
                              ],
                            ),
                          ),
                          child: SvgPicture.asset('assets/icons/call.svg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    width: 129.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: Center(
                      child: Text(
                        'Just to order',
                        style: GoogleFonts.libreFranklin(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: const Color(0xFF181818),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 265.w,
                        height: 41.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF53E88B),
                              Color(0xFF15BE77),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Okay, for what level of spiciness?',
                            style: GoogleFonts.libreFranklin(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 185.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Okay, wait a minute',
                          style: GoogleFonts.libreFranklin(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: const Color(0xFF181818),
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Container(
                          width: 15.w,
                          height: 15.h,
                          // color: Colors.red,
                          child: Image.asset('assets/icons/thumbs_up.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 175.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF53E88B),
                              Color(0xFF15BE77),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Okay I\'m waiting',
                              style: GoogleFonts.libreFranklin(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Container(
                              width: 15.w,
                              height: 15.h,
                              // color: Colors.red,
                              child: Image.asset('assets/icons/thumbs_up.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 170.h,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 30,
                      right: 30,
                    ),
                    width: 355.w,
                    height: 74.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF2b51d9).withOpacity(0.1),
                          blurRadius: 20.r,
                          spreadRadius: 1.r,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(22.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'Okay I\'m waiting',
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: const Color(0xFF181818),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              SizedBox(
                                width: 15.w,
                                height: 15.h,
                                child:
                                    Image.asset('assets/icons/thumbs_up.png'),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset('assets/icons/send.svg')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
