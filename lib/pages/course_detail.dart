// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:online_course_app/pages/course_vertical_list.dart';
import 'package:online_course_app/pages/course_vertical_list_no_free.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF29274F),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 392,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(1, 0.0),
                  colors: <Color>[
                    Color(0xFFF4C465),
                    Color(0xFFC63956),
                  ],
                ),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/img_saly36_detail.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 22,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/stars.png'),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    'Graphic Design Master for Everyone',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 112.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user1.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 22.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user2.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 45,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user3.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 67.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user4.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Text(
                            '+28K Members',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFFCACACA),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 47,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFF353567),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 12,
                          ),
                          child: Image.asset('assets/images/like.png'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const MyVerticalDetailList();
              },
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const MyVerticalDetailList1();
              },
            ),
          ],
        ),
      ),
    );
  }
}
