import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:port_folio_app/data/dev_data.dart';
import 'package:port_folio_app/utils/app_str.dart';
import 'package:port_folio_app/view/LoginPage.dart';
import 'package:port_folio_app/view/firstProject.dart';
import 'package:port_folio_app/widgets/contact_card.dart';
import 'package:port_folio_app/widgets/skills_box.dart';
import 'package:typing_animation/typing_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key, required this.nextPage});

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    ThemeData theme = Theme.of(context);

    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top:30,left:20,right:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Empty Space
                // Padding(
                //   padding: const EdgeInsets.only(top:15,left:10,bottom: 15),
                //   child: SizedBox(
                //   height: size.height * 0.05,
                //     child:Text("ABOUT ME",
                //     style:theme.textTheme.bodyLarge)
                //   ),
                // ),

                /// Bio
                Container(
                  // margin: EdgeInsets.all(size.height * .01),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,vertical:20
                  ),
                  width: size.width,
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.thirdScreenProject,
                        style: theme.textTheme.displaySmall,
                      ),
                      SizedBox(height:10),
                      Text("Portfolio Application : ",
                      style:TextStyle(
                        fontSize:20,
                        fontWeight:FontWeight.bold,
                        color:Colors.grey.shade700,
                      )),
                      SizedBox(height:2),
                      Text( """    Developed in Flutter with GetX Statemanagement.using Dart Programming Language connected with  FireBase."""
                           """                   SignIn and SignUp with the service of Firebase Authentication""",
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height:4),
                      GestureDetector(
                        onTap:(){
                          Get.to(ProjectDetails());
                        },
                        child:Padding(
                          padding: const EdgeInsets.only(left:145),
                          child: Text("Project Details",
                              style:TextStyle(
                                fontSize:19,
                                color:Color(0xff6A33FF),
                                fontWeight:FontWeight.bold,
                              )),

                        )
                        ),
                      SizedBox(height:10),
                    ],
                  ),
                ),
                SizedBox(height:30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,vertical:20
                      ),

                      decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child:Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children:[
                          Text(AppStrings.secondScreenContact,
                            style: theme.textTheme.displaySmall,),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          SizedBox(
                            width: size.width,
                            child:Column(
                              crossAxisAlignment:CrossAxisAlignment.start,
                              children:[
                                Row(
                                  children: [
                                    Text("PH NO : ",style:TextStyle(
                                      fontSize:18,
                                      fontWeight:FontWeight.bold,
                                      color:Colors.grey.shade700,
                                    )),
                                    Text(
                                      DevData.devData.number,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("EMAIL : ",style:TextStyle(
                                      fontSize:18,
                                      fontWeight:FontWeight.bold,
                                      color:Colors.grey.shade700,
                                    )),
                                    Text(
                                      DevData.devData.mail,
                                      style: theme.textTheme.bodyMedium,
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("LNKDN : ",style:TextStyle(
                                      fontSize:18,
                                      fontWeight:FontWeight.bold,
                                      color:Colors.grey.shade700,
                                    )),
                                    Text(
                                      DevData.devData.linkedIn,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),

                              ],
                            )
                          )
                        ],
                      )
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top:18,bottom:10),
                   child: Align(
                alignment:Alignment.centerRight,
                     child:TypingAnimation(
                        text:("Thank You !"),
                        textStyle: TextStyle(
                           color: Color(0xff6A33FF),
                           fontWeight: FontWeight.bold,
                          fontSize: 30,
                         ),
                       ),
                     ),
                   ),


                Padding(
                  padding: const EdgeInsets.only(top:5,bottom:10),
                  child: Align(
                    alignment:Alignment.centerRight,
                    child: Container(
                      height:50,
                      width:MediaQuery.of(context).size.width*0.7,
                      decoration:BoxDecoration(
                        color:Color(0xff6A33FF),
                        borderRadius:BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: (){
                          Get.defaultDialog(
                              barrierDismissible: false,
                              title:"ALERT",
                              titleStyle: TextStyle(
                                  color:Color(0xff6A33FF),
                                  fontWeight: FontWeight.w700
                              ),
                              titlePadding: EdgeInsets.only(top:10,bottom:0),
                              content: Text(" Are you sure to sign out",style:TextStyle(
                                  fontSize:18,color:Colors.grey.shade800
                              )),
                              contentPadding: EdgeInsets.only(top:10,bottom:0),

                              actions: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10),
                                  child: Column(
                                      children:[
                                        Row(mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                          children: [
                                           // SizedBox(width: 150),
                                            TextButton(
                                              style:ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(Color(0xff6A33FF))
                                              ),
                                              onPressed:(){
                                                Get.back();
                                              },
                                              child:Container(
                                                height: 25,
                                                width: 90,
                                                child: Center(
                                                  child: Text(
                                                      "No",style:TextStyle(
                                                      fontSize:21,
                                                      color:Colors.white
                                                  )
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              style:ButtonStyle(
                                                  backgroundColor: MaterialStateProperty.all(Color(0xff6A33FF))
                                              ),
                                              onPressed:(){
                                                Get.to(LoginPage());
                                              },
                                              child:Container(
                                                height: 25,
                                                width: 90,
                                                child: Center(
                                                  child: Text(
                                                      "Yes",style:TextStyle(
                                                      fontSize:21,
                                                      color:Colors.white
                                                  )
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )

                                      ]

                                  ),
                                )
                              ]
                          );
                        },
                        child:Text("Sign Out",
                        style:TextStyle(
                            fontSize:21,
                            color:Colors.white,
                            letterSpacing: 1
                        )
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height:30),
          ]
        )
    )),
    );
  }
}
