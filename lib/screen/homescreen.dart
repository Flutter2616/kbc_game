import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.network(
                  "https://assets.gadgets360cdn.com/pricee/assets/product/202208/KBC_1661465411.jpg",
                  fit: BoxFit.fill,
                  opacity: AlwaysStoppedAnimation(30)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.pushReplacementNamed(context, 'dash');
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade700,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white, width: 3)),
                  child: Text("Play",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
