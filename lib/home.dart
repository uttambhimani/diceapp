import 'dart:math';

import 'package:flutter/material.dart';
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int i =1;
  int j=1;
  List image_parth=[
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/five.png",
    "assets/images/six.png"];
  List image_parthh=[
    "assets/images/one.png",
    "assets/images/two.png",
    "assets/images/three.png",
    "assets/images/four.png",
    "assets/images/five.png",
    "assets/images/six.png"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${j+i+2}",style: TextStyle(fontSize: 40),),
            Container(
              height: 100
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Random random = Random();

                      setState(() {

                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(image_parth[i]),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Random random = Random();

                      setState(() {

                      });
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(image_parthh[j]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("${i+1}",style: TextStyle(fontSize: 20)),
                 Container(width: 150,),
                 Text("${j+1}",style: TextStyle(fontSize: 20),),
               ],
             ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        Random random = Random();

                        setState(() {
                          i = random.nextInt(6);
                          j = random.nextInt(6);


                        });
                      },
                      child: Text("clik")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
