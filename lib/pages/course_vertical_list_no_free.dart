// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyVerticalDetailList1 extends StatefulWidget {
  const MyVerticalDetailList1({Key? key}) : super(key: key);

  @override
  _MyVerticalDetailListState createState() => _MyVerticalDetailListState();
}

class _MyVerticalDetailListState extends State<MyVerticalDetailList1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
      ),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: const Color(0xFF3E3A6D)),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: const Color(0xFFDB61A1),
                borderRadius: BorderRadius.circular(19),
                image: const DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage('assets/images/Saly-21.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fundamental of Design',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          '16 Minutes',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8C8C8C),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
