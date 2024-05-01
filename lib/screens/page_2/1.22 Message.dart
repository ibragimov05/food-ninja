import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/widgets/message_chats.dart';
import 'package:google_fonts/google_fonts.dart';

class Message extends StatelessWidget {
  const Message({super.key});

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
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/chatDetails');
                  },
                  child: ChatMessage(
                    imagePath: 'assets/images/person1.png',
                    name: 'Anamwp',
                    info: 'Your Order Just Arrived',
                    time: '20:00',
                  ),
                ),
                ChatMessage(
                  imagePath: 'assets/images/person2.png',
                  name: 'Guy Hawkins',
                  info: 'Your Order Just Arrived',
                  time: '20:00',
                ),
                ChatMessage(
                  imagePath: 'assets/images/person3.png',
                  name: 'Leslie Alexander',
                  info: 'Your Order Just Arrived',
                  time: '20:00',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
