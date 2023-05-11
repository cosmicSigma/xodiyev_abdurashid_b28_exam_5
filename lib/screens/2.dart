import 'package:flutter/material.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  @override
  Widget build(BuildContext context) {
    final myHeight = MediaQuery.of(context).size.height;
    final myWidth = MediaQuery.of(context).size.height;
    final size = myHeight>myWidth ? myHeight/myWidth : myWidth/myHeight;
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(size*20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Image(image: const AssetImage("assets/images/icons/back_arrow.png"), height: size*30, width: size*30, fit: BoxFit.fill)),
                      const Image(image: AssetImage("assets/images/icons/heart.png")),
                    ],
                  ),

                  SizedBox(height: size*40),
                  Image(image: const AssetImage("assets/images/watch.png"), height: size*250, width: size*250, fit: BoxFit.fill,),
                  SizedBox(height: size*10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(size*10)
                          ),
                        child: SizedBox(
                          height: size*10,
                          width: size*25,
                        ),
                      ),
                      SizedBox(width: size*5,),
                      DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(size*10)
                          ),
                        child: SizedBox(
                          height: size*10,
                          width: size*10,
                        ),
                      ),
                      SizedBox(width: size*5,),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius: BorderRadius.circular(size*10)
                        ),
                        child: SizedBox(
                          height: size*10,
                          width: size*10,
                        ),
                      ),
                      SizedBox(width: size*5,),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color(0xffc4c4c4),
                            borderRadius: BorderRadius.circular(size*10)
                        ),
                        child: SizedBox(
                          height: size*10,
                          width: size*10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size*40),
                  Text("Series 3", style: TextStyle(fontSize: size*24, color: Colors.black, fontWeight: FontWeight.bold)),
                  SizedBox(height: size*10,),
                  Text("The Apple watch series 3 is designed for people who want to keep their fitness game on point.", style: TextStyle(fontSize: size*18, color: Color(0xff3A3A3A))),
                  SizedBox(height: size*10,),
                  Row(
                    children: [
                      Text(r"$295.00", style: TextStyle(fontWeight: FontWeight.bold,fontSize: size*24, color: Colors.black)),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(size*100),
                            color: Colors.white70
                        ),
                        child: SizedBox(height:size*25, width: size*25, child: Center(child: Text("+", style: TextStyle(fontSize: size*16, fontWeight: FontWeight.bold, color: Colors.black),))),
                      )
                    ],
                  ),

                  SizedBox(height: size*50,),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Colors.black
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: size*15, horizontal: size*104),
                      child: Text("PROCEED TO BUY", style: TextStyle(fontSize: size*18, color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: size*30,),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid
                        )
                      ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: size*15, horizontal: size*120),
                      child: Text("ADD TO CART", style: TextStyle(fontSize: size*18),),
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}



