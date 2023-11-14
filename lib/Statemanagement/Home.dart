// ignore_for_file: prefer_const_constructors

import 'package:book_tickets/Statemanagement/Second.dart';
import 'package:book_tickets/Statemanagement/listProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersProvider>(
      builder: (context, NumbersProvider, child) => Scaffold(
        appBar: AppBar(
          title: Text("State Management"),
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
                NumbersProvider.num.last.toString(),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
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
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Second(),
                    ),
                  );
                },
                child: Text("Second"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
