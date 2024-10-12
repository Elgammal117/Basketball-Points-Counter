// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int a = 0;

  int b = 0;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Points Counter",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 524,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Team a",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: SizedBox(
                              width: 170,
                              child: Center(
                                child: Text(
                                  "$a",
                                  style: TextStyle(fontSize: 150),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                a = a + 1;

                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 1 point")),
                          Spacer(flex: 1),
                          ElevatedButton(
                              onPressed: () {
                                a = a + 2;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 2 point")),
                          Spacer(flex: 1),
                          ElevatedButton(
                              onPressed: () {
                                a = a + 3;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 3 point")),
                          Spacer(flex: 1),
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        width: 50,
                        indent: 10,
                        color: Color.fromARGB(255, 87, 87, 87),
                      ),
                      Column(
                        children: [
                          const Text(
                            "Team B",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50),
                            child: SizedBox(
                              width: 170,
                              child: Center(
                                child: Text(
                                  "$b",
                                  style: TextStyle(fontSize: 150),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                b = b + 1;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 1 point")),
                          Spacer(flex: 1),
                          ElevatedButton(
                              onPressed: () {
                                b = b + 2;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 2 point")),
                          Spacer(flex: 1),
                          ElevatedButton(
                              onPressed: () {
                                b = b + 3;
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange),
                              child: const Text(
                                  style: TextStyle(color: Colors.black),
                                  "Add 3 point")),
                          Spacer(flex: 1),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(flex: 1),
                ElevatedButton(
                    onPressed: () {
                      a = 0;
                      b = 0;
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: const Text(
                        style: TextStyle(color: Colors.black), "Reset")),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          )),
    ));
  }
}
