import 'package:flutter/material.dart';

import '../src/constants/colors.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("AnalyzeBuddy",style: TextStyle(fontWeight: FontWeight.w700,color: HeadingTextColor),),
        backgroundColor: appBarColor.shade700,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello , Tejas",style:TextStyle(fontWeight: FontWeight.w700,fontSize: 25,color: PrimaryTextColor)),
              Text("Have a nice day!",style: TextStyle(color: SecondaryTextColor.shade800,fontWeight: FontWeight.w500),),
              SizedBox(height: size.height*0.05,),

              Text("Your Recent Score",style: TextStyle(color: SecondaryTextColor.shade800,fontWeight: FontWeight.w500),),
              SizedBox(height: size.height*0.02,),

              Container(
                height: size.height*0.2,
                width: size.width*0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: appBarColor.shade700,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mathematics",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w700,fontSize: 23),),
                          Text("16/20",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w900,fontSize: 28),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: size.width*0.02,),
              SizedBox(height: size.height*0.05,),
              
              Row(
                children: [
                  Text("Your Score",style: TextStyle(color: SecondaryTextColor.shade800,fontWeight: FontWeight.w500),),
                  SizedBox(width: size.width*0.5,),
                  InkWell(onTap: (){

                  },
                  child: Text("view all",style: TextStyle(color: SecondaryTextColor.shade800,fontWeight: FontWeight.w500),)),
                ],
              ),
              SizedBox(height: size.height*0.05,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [

                    Container(
                      height: size.height*0.2,
                      width: size.width*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: PrimaryAscentColor.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mathematics",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w700,fontSize: 23),),
                                Text("16/20",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w900,fontSize: 28),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    Container(
                      height: size.height*0.2,
                      width: size.width*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: PrimaryAscentColor.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mathematics",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w700,fontSize: 23),),
                                Text("16/20",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w900,fontSize: 28),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    Container(
                      height: size.height*0.2,
                      width: size.width*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: PrimaryAscentColor.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mathematics",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w700,fontSize: 23),),
                                Text("16/20",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w900,fontSize: 28),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    Container(
                      height: size.height*0.2,
                      width: size.width*0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: PrimaryAscentColor.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mathematics",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w700,fontSize: 23),),
                                Text("16/20",style: TextStyle(color: HeadingTextColor,fontWeight: FontWeight.w900,fontSize: 28),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                  ],
                ),
              ),
              

            ],
          ),
        ),

      ),
    );
  }
}
