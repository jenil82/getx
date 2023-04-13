import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controler/home_controler.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homecontroler h1 = Get.put(Homecontroler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "Getx",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Obx(() => Text(
                    "${h1.i}",
                    style: TextStyle(fontSize: 50,color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      h1.i++;
                    },
                    child: Text("1x",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black)),
                ElevatedButton(
                    onPressed: () {
                      h1.i.value = (h1.i * 2).toInt();
                    },
                    child: Text("2x",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black)),
                ElevatedButton(
                    onPressed: () {
                      h1.i.value = (h1.i * 3).toInt();
                    },
                    child: Text("3x",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black)),
                ElevatedButton(
                    onPressed: () {
                      h1.i.value = (h1.i * 4).toInt();
                    },
                    child: Text("4x",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
