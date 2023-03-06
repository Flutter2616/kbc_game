import 'package:flutter/material.dart';
import 'package:kbc_game/dart/modalclass.dart';

class Dashscreen extends StatefulWidget {
  const Dashscreen({Key? key}) : super(key: key);

  @override
  State<Dashscreen> createState() => _DashscreenState();
}

class _DashscreenState extends State<Dashscreen> {
  List qu = [
    "The International Literacy Day is observed on",
    "The language of Lakshadweep. a Union Territory of India, is",
    "In which group of places the Kumbha Mela is held every twelve years?",
    "Bahubali festival is related to",
    "Which day is observed as the World Standards  Day?"
  ];

  List ans = ["C", "B", "D", "D", "A"];

  List op1 = [
    "May 2",
    "Tamil",
    "Rameshwaram. Purl, Badrinath. Dwarika",
    "Islam",
    "Oct 14"
  ];
  List op2 = [
    "Nov 28",
    "Malayalam",
    "Chittakoot, Ujjain, Prayag,'Haridwar",
    "Hinduism",
    "Nov 15"
  ];
  List op3 = [
    "Sep 8",
    "Telugu",
    "Ujjain. Purl; Prayag. Haridwar",
    "Buddhism",
    "June 26"
  ];
  List op4 = [
    "Sep 22",
    "Hindi",
    "Prayag. Haridwar, Ujjain,. Nasik",
    "Jainism",
    "Dec 2"
  ];

  List user = [];
  int i = 0;
  int amount = 10000;

  @override
  Widget build(BuildContext context) {
    // String img = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              // color: Color(0xff9f31e3),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
                ),
              ),
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo1.png", width: 200, height: 200),
                SizedBox(height: 40),
                box(
                    h1: 60,
                    width: 250,
                    a1: Alignment.center,
                    b1: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurple,
                          Colors.purple,
                        ],
                      ),
                    ),
                  w1: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Amount =",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25)),
                      Icon(Icons.currency_rupee,size: 25,color: Colors.white),
                      Text("$amount",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 25)),
                    ],
                  )
                ),
                SizedBox(height: 40),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: box(
                        h1: 200,
                        width: double.infinity,
                        a1: Alignment.center,
                        b1: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        w1: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${qu[i]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.purple,
                                letterSpacing: 2,
                                wordSpacing: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Divider(height: 2, color: Colors.white),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (i == 0 || ans[i - 1] == user[i - 1]) {
                              if (user.length != qu.length) {
                                user.add("A");
                                Data d=Data(ans: ans[i],user: user[i],amount: amount,i: i,qu: qu);

                                Navigator.pushNamed(context, 'Last',arguments: d);
                              }
                              if (i < qu.length - 1) {
                                i++;
                                amount += amount;
                                // print(user);
                              }
                            }
                            print(user);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: option("A", "${op1[i]}"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (i == 0 || ans[i - 1] == user[i - 1]) {
                              if (user.length != qu.length) {
                                user.add("B");
                                Data d=Data(ans: ans[i],user: user[i],amount: amount,i: i,qu: qu);

                                Navigator.pushNamed(context, 'Last',arguments: d);
                              }
                              if (i < qu.length - 1) {
                                i++;
                                amount += amount;
                                // print(user);
                              }
                            }
                            print(user);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: option("B", "${op2[i]}"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (i == 0 || ans[i - 1] == user[i - 1]) {
                              if (user.length != qu.length) {
                                user.add("C");
                                Data d=Data(ans: ans[i],user: user[i],amount: amount,i: i,qu: qu);

                                Navigator.pushNamed(context, 'Last',arguments: d);
                              }
                              if (i < qu.length - 1) {
                                i++;
                                amount += amount;
                                // print(user);
                              }
                            }
                            print(user);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: option("C", "${op3[i]}"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (i == 0 || ans[i - 1] == user[i - 1]) {
                              if (user.length != qu.length) {
                                user.add("D");
                                Data d=Data(ans: ans[i],user: user[i],amount: amount,i: i,qu: qu);

                                Navigator.pushNamed(context, 'Last',arguments: d);
                              }
                              if(i<qu.length-1)
                                {
                                  i++;
                                  amount+=amount;
                                }
                            }
                            print(user);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: option("D", "${op4[i]}"),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget box(
      {Color? c1,
      Widget? w1,
      double? width,
      Alignment? a1,
      BoxDecoration? b1,
      required double h1}) {
    return Container(
      width: width,
      height: h1,
      decoration: b1,
      alignment: a1,
      color: c1,
      child: w1,
    );
  }

  Widget option(String opname, String ans) {
    return Container(
      height: 50,
      width: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Colors.deepPurple,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text("($opname) $ans",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Colors.white,
              letterSpacing: 2)),
    );
  }
}
