// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${hotel['place']}",
            style: Style.headlineStyle2.copyWith(
              color: Style.kakiColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${hotel['destination']}",
            style: Style.headlineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "\$${hotel['price']}/night",
            style: Style.headlineStyle1.copyWith(
              color: Style.kakiColor,
            ),
          )
        ],
      ),
    );
  }
}
