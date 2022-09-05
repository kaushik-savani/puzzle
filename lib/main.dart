import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: puzzle(),
  ));
}

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  List<String> s = [];

  generatenum() {
    List<int> l = [];
    for (int i = 0; i < 9;) {
      int r = Random().nextInt(9);
      if (!l.contains(r)) {
        l.add(r);
        i++;
      }
    }
    for (int i = 0; i < 9; i++) {
      if (l[i] == 0) {
        s.add("");
      } else {
        s.add("${l[i]}");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    generatenum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Puzzle"),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[0] != "" && s[1] == "") {
                          s[1] = s[0];
                          s[0] = "";
                        }
                        if (s[0] != "" && s[3] == "") {
                          s[3] = s[0];
                          s[0] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[0],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[1] != "" && s[0] == "") {
                          s[0] = s[1];
                          s[1] = "";
                        }
                        if (s[1] != "" && s[2] == "") {
                          s[2] = s[1];
                          s[1] = "";
                        }
                        if (s[1] != "" && s[4] == "") {
                          s[4] = s[1];
                          s[1] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[1],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[2] != "" && s[1] == "") {
                          s[1] = s[2];
                          s[2] = "";
                        }
                        if (s[2] != "" && s[5] == "") {
                          s[5] = s[2];
                          s[2] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[2],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[3] != "" && s[0] == "") {
                          s[0] = s[3];
                          s[3] = "";
                        }
                        if (s[3] != "" && s[4] == "") {
                          s[4] = s[3];
                          s[3] = "";
                        }
                        if (s[3] != "" && s[6] == "") {
                          s[6] = s[3];
                          s[3] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[3],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[4] != "" && s[1] == "") {
                          s[1] = s[4];
                          s[4] = "";
                        }
                        if (s[4] != "" && s[3] == "") {
                          s[3] = s[4];
                          s[4] = "";
                        }
                        if (s[4] != "" && s[5] == "") {
                          s[5] = s[4];
                          s[4] = "";
                        }
                        if (s[4] != "" && s[7] == "") {
                          s[7] = s[4];
                          s[4] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[4],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[5] != "" && s[2] == "") {
                          s[2] = s[5];
                          s[5] = "";
                        }
                        if (s[5] != "" && s[4] == "") {
                          s[4] = s[5];
                          s[5] = "";
                        }
                        if (s[5] != "" && s[8] == "") {
                          s[8] = s[5];
                          s[5] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[5],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ))
                  ],
                )),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[6] != "" && s[3] == "") {
                          s[3] = s[6];
                          s[6] = "";
                        }
                        if (s[6] != "" && s[7] == "") {
                          s[7] = s[6];
                          s[6] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[6],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[7] != "" && s[6] == "") {
                          s[6] = s[7];
                          s[7] = "";
                        }
                        if (s[7] != "" && s[4] == "") {
                          s[4] = s[7];
                          s[7] = "";
                        }
                        if (s[7] != "" && s[8] == "") {
                          s[8] = s[7];
                          s[7] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[7],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        if (s[8] != "" && s[5] == "") {
                          s[5] = s[8];
                          s[8] = "";
                        }
                        if (s[8] != "" && s[7] == "") {
                          s[7] = s[8];
                          s[8] = "";
                        }
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(
                          s[8],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ))
                  ],
                ))
          ],
        ));
  }
}
