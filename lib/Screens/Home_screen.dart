// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:book_tickets/Screens/hotel_screen.dart';
import 'package:book_tickets/Screens/tickets_view.dart';
import 'package:book_tickets/utils/app_info_list.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Book Tickets"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morining",
                          style: Style.headlineStyle3,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets",
                          style: Style.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/Book_logo.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_filled,
                        color: Color(0xFFBFC205),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "search",
                        style: Style.headlineStyle4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "UpComing Flights",
                      style: Style.headlineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("You are clicking the button");
                      },
                      child: Text(
                        "View All",
                        style: Style.textStyle.copyWith(
                          color: Style.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:ticketList
                        .map(
                          (singleTicket) => TicketsView(
                            tickets: singleTicket,
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotels",
                        style: Style.headlineStyle2,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "View All",
                          style: Style.textStyle.copyWith(
                            color: Style.primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map(
                          (singleHotel) => HotelScreen(
                            hotel: singleHotel,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
