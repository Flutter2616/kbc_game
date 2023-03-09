import 'package:flutter/material.dart';
import 'package:kbc_game/dart/modalclass.dart';

class Lastscreen extends StatefulWidget {
  const Lastscreen({Key? key}) : super(key: key);

  @override
  State<Lastscreen> createState() => _LastscreenState();
}

class _LastscreenState extends State<Lastscreen> {
  @override
  Widget build(BuildContext context) {
    Data d = ModalRoute.of(context)!.settings.arguments as Data;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Spacer(),
                (d.ans == d.user)
                    ? Image.asset("assets/images/win.png",
                        height: 200, width: 200)
                    : Image.asset("assets/images/lose.png",
                        height: 200, width: 200),
                SizedBox(height: 50),
                (d.ans == d.user)
                    ? Text("Your Answer is Currect",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.purpleAccent,
                            letterSpacing: 2))
                    : Text("Your Answer is Wrong",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.purpleAccent,
                            letterSpacing: 2)),
                SizedBox(height: 50),
                (d.ans == d.user)
                    ? Text("You Won\n  ${d.amount}",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2))
                    : Text("    Sorry!!\n you are lose",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2)),
                SizedBox(height: 20),
                (d.ans == d.user)
                    ? ElevatedButton(
                        onPressed: () {
                          setState(() {
                            (d.i == d.qulen)
                                ? Navigator.pushReplacementNamed(context, '/')
                                :  Navigator.pop(context);
                          });
                        },
                        child: (d.i == d.qulen)
                            ? Text(
                                "Restart",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              )
                            : Text(
                                "Next Qusetion",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pushReplacementNamed(context, '/');
                          });
                        },
                        child: Text(
                          "Try Again!",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade500))),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
