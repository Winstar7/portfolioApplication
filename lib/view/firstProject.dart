import "package:flutter/cupertino.dart";
import"package:flutter/material.dart";
import "package:get/get.dart";
import "package:port_folio_app/data/dev_data.dart";
import "package:port_folio_app/models/dev_model.dart";
import "package:port_folio_app/view/ProjectImage.dart";
class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    ThemeData theme = Theme.of(context);
   return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: IconButton(
                  icon:Icon(Icons.arrow_back_outlined,
                   color:Colors.grey.shade600,
                      size:30),
                  onPressed: (){
                    Get.back();
                  },
                ),
              ),
              Padding(
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
                  "Project Details",
                      style: theme.textTheme.titleLarge
                  ),
                  SizedBox(height:10),
                  Text("Technologies Used : ",
                      style:TextStyle(
                        fontSize:20,
                        fontWeight:FontWeight.bold,
                        color:Colors.grey.shade700,
                      )),
                  SizedBox(height:6),
                  ...List.generate(DevData.devData.projectDetails.length,
              (index) =>Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: const EdgeInsets.only(top:6.0),
                   child: Icon(
                    Icons.circle,
                    color:Color(0xff6A33FF),
                    size: 14,
                   ),
                 ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                       DevData.devData.projectDetails[index],
                       style:TextStyle(
                        fontSize:18,
                        color:Colors.grey.shade700,
                       )
                      ),
                    ),
                  ),
                 //SizedBox(height:10),
                ],
              ),
                  ),
                  SizedBox(height:10),
                    SizedBox(height:10),
                  ],
                  ),
                  ),
                  ],)),
              SizedBox(height:30),
              Center(
                child: TextButton(
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
              ),

            ],
          )

   );
  }
}
