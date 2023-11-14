// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/Statemanagement/listProvider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  // final List<int> num;
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersProvider>(
      builder: (context, NumbersProvider, child) => Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            NumbersProvider.add();
          },
          child: Icon(Icons.add),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                NumbersProvider.num.toString(),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: NumbersProvider.num.length,
                  itemBuilder: (context, index) {
                    return Text(
                      NumbersProvider.num[index].toString(),
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
