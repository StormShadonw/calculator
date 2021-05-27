import 'package:calculator/Widgets/call_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var buttons = [
    "AC",
    "+/-",
    "%",
    "/",
    "7",
    "8",
    "9",
    "X",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    "return",
    "0",
    ".",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.40,
              color: Colors.red,
            ), //Calculator Screen
            Container(
              height: size.height * 0.60,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: GridView.count(
                crossAxisCount: 4,
                children: allItems(),
              ),
            ), // Calculator Buttons
          ],
        ),
      ),
    );
  }

  List<Widget> allItems() {
    List<CalButton> allItems = [];
    buttons.map((e) {
      print(e);
      print("Hello!");
      allItems.add(CalButton(
        child: e,
      ));
    });
    return allItems;
  }
}
