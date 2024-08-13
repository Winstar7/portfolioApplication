import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:port_folio_app/data/dev_data.dart';
import 'package:port_folio_app/utils/app_str.dart';
import 'package:port_folio_app/widgets/contact_card.dart';
import 'package:port_folio_app/widgets/skills_box.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.nextPage});

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
                        AppStrings.secondScreenBio,
                        style: theme.textTheme.displaySmall,
                      ),
                      SizedBox(height:10),
                      Text(
                        DevData.devBio,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                  SizedBox(height:30),
                Container(
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
                      Text(AppStrings.secondScreenSkills,
                    style: theme.textTheme.displaySmall,),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      SizedBox(
                          width: size.width,
                        child:Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.start,
                          spacing: size.width * .05,
                          runSpacing: size.width * .03,
                          children: List.generate(
                              DevData.devData.skills.length,
                                  (index) => SkillBox(
                                text: DevData.devData.skills[index],
                              )),
                        ),
                      )
                    ],
                  )
                ),
              SizedBox(height:30),
              //color:Colors.grey
            /// Hobbies
            Container(
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
                    AppStrings.secondScreenEducation,
                    style: theme.textTheme.displaySmall,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  SizedBox(
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          DevData.devData.education.length,
                              (index) =>
                                  Text(
                                    "$index. ${DevData.devData.education[index]}",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                        ),
                      )
                  ),
                  GestureDetector(
                    onTap:(){
                       Get.defaultDialog(
                         barrierDismissible: false,
                         backgroundColor:theme.cardColor,
                         title:"DETAILS",
                          titleStyle: TextStyle(
                            color:Color(0xff6A33FF),
                            fontWeight: FontWeight.w700
                          ),
                          titlePadding: EdgeInsets.only(top:10),
                          content: Text(" My Percentage / CGPA ",    style:TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                            color:Colors.grey.shade700,
                          )),
                          contentPadding: EdgeInsets.only(top:5,bottom:0),

                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(bottom:10),
                            child: Column(
                              children:[
                                Text("B.Tech.IT - 8 % ", style: theme.textTheme.bodyMedium,),
                                Text("  HSC       - 74.3 % " ,style: theme.textTheme.bodyMedium,),
                                Text("  SSLC       - 86.3 % ", style: theme.textTheme.bodyMedium,),
                                SizedBox(height:10),
                                Row(
                                  children: [
                                    SizedBox(width: 150),
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
                                            "Back",style:TextStyle(
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
                    child:Padding(
                      padding: const EdgeInsets.only(left:110),
                      child: Text("Percentage / CGPA",
                      style:TextStyle(
                        fontSize:19,
                        color:Color(0xff6A33FF),
                        fontWeight:FontWeight.bold,
                      )),
                      
                    )
                  )
                ],
              ),
            ),

            /// Contact
            // Container(
            //   margin: EdgeInsets.all(size.height * .01),
            //   padding: EdgeInsets.symmetric(
            //     horizontal: size.width * .03,
            //     vertical: size.height * .01,
            //   ),
            //   width: size.width,
            //   decoration: BoxDecoration(
            //     color: theme.cardColor,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         AppStrings.secondScreenContact,
            //         style: theme.textTheme.bodyLarge,
            //       ),
            //       SizedBox(
            //         height: size.height * .01,
            //       ),
            //       ContactCard(title: DevData.devData.number, icon: Icons.phone),
            //       ContactCard(title: DevData.devData.mail, icon: Icons.mail),
            //     ],
            //   ),
            // ),
            //
            // /// Next Page
                    SizedBox(height:10),
            IconButton(
                color: theme.canvasColor,
                onPressed: nextPage,
                icon: Center(child: const Icon(Icons.subdirectory_arrow_right_outlined,size:30))),

            /// Empty Space
            // SizedBox(
            //   height: size.height * 0.05,

            ],
          ),),
        )

    );
  }
}
