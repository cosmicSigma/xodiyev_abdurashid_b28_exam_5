import 'dart:math';
import 'package:flutter/material.dart';

import '2.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final myHeight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.height;
    final size = myHeight>myWidth ? myHeight/myWidth : myWidth/myHeight;
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: DefaultTextStyle(
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: size*15,
              color: const Color(0xff777070)
            ),
            child: Row(
              children: [
                /// Menu
                SizedBox(
                  height: double.infinity,
                  width: size*90,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: const AssetImage("assets/images/icons/apple.png"), height: size*35, width: 30, fit: BoxFit.fill,),
                        SizedBox(height: size*240,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Transform.rotate(angle:(3*pi)/2,child: Text("Watches", style: TextStyle(color: Colors.white, fontSize: size*17))),
                              SizedBox(height: size*70,),
                              Transform.rotate(angle:(3*pi)/2,child: Text("Macbooks", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: size*17),)),
                              SizedBox(height: size*70,),
                              Transform.rotate(angle:(3*pi)/2,child: Text("iPhones", style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: size*17),)),
                            ],
                          ),
                        ),
                        SizedBox(height: size*240,),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SalesPage()),
                              );
                            },
                            child: Image(image: const AssetImage("assets/images/icons/home.png"), height: size*30, width: 30, fit: BoxFit.fill,),
                        )
                      ],
                    ),
                  ),
                ),

                /// Page
                Expanded(
                  flex: 3,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size*30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: size*40, left: size*210),
                              child: Image(image: const AssetImage("assets/images/icons/search.png"), height: size*30, width: 30, fit: BoxFit.fill),
                            ),
                            Text("Apple", style: TextStyle(fontSize: size*16),),
                            Text("Watches", style: TextStyle(fontSize: size*24, color: Colors.black),),
                            SizedBox(height: size*50,),
                            Column(
                              children:  [
                                Image(image: const AssetImage("assets/images/watch.png"), height: size*200, width: size*200, fit: BoxFit.fill,),
                                SizedBox(height: size*20,),
                                Text("Series 3", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                SizedBox(height: size*10,),
                                Text("The Apple watch series 3 is designed for people who want to keep their fitness game on point.", style: TextStyle(fontSize: size*12.5)),
                                SizedBox(height: size*10,),
                                Row(
                                  children: [
                                    Text(r"$295.00", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                    DecoratedBox(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(size*100),
                                          color: Colors.white70
                                        ),
                                      child: SizedBox(height:size*25, width: size*25, child: Center(child: Text("+", style: TextStyle(fontSize: size*16, fontWeight: FontWeight.bold, color: Colors.black),))),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: size*50,),
                            Column(
                              children:  [
                                Image(image: const AssetImage("assets/images/watch2.png"), height: size*200, width: size*200, fit: BoxFit.fill,),
                                SizedBox(height: size*20,),
                                Text("Series 5", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                SizedBox(height: size*10,),
                                Text("The Apple watch series 3 is designed for people who want to keep their fitness game on point.", style: TextStyle(fontSize: size*12.5)),
                                SizedBox(height: size*10,),
                                Row(
                                  children: [
                                    Text(r"$295.00", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(size*100),
                                          color: Colors.white70
                                      ),
                                      child: SizedBox(height:size*25, width: size*25, child: Center(child: Text("+", style: TextStyle(fontSize: size*16, fontWeight: FontWeight.bold, color: Colors.black),))),
                                    )
                                  ],
                                )
                              ],
                            ),

                            Column(
                              children:  [
                                Image(image: const AssetImage("assets/images/watch.png"), height: size*200, width: size*200, fit: BoxFit.fill,),
                                SizedBox(height: size*20,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Series 3", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                ),
                                SizedBox(height: size*10,),
                                Text("The Apple watch series 3 is designed for people who want to keep their fitness game on point.", style: TextStyle(fontSize: size*12.5)),
                                SizedBox(height: size*10,),
                                Row(
                                  children: [
                                    Text(r"$295.00", style: TextStyle(fontSize: size*20, color: Colors.black)),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(size*100),
                                          color: Colors.white70
                                      ),
                                      child: SizedBox(height:size*25, width: size*25, child: Center(child: Text("+", style: TextStyle(fontSize: size*16, fontWeight: FontWeight.bold, color: Colors.black),))),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
