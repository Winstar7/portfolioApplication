import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:port_folio_app/data/dev_data.dart';
import 'package:port_folio_app/utils/app_colors.dart';
import 'package:port_folio_app/utils/app_str.dart';
import 'package:port_folio_app/widgets/skills_progress.dart';
import '../widgets/skills_box.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.nextPage,
  });

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        drawer:Drawer(

            child: Container(
              color: theme.cardColor,
              child: Column(
                children: [
                  // Drawer Header
                  UserAccountsDrawerHeader(
                    accountName: Text('WINSTAR . K'),
                    accountEmail: Text('winstarkennedy777@gmails.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage:AssetImage(
                          AppStrings.imageUrl
                      ) ,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff6A33FF),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Date of Birth',style: theme.textTheme.titleLarge),
                    subtitle: Text('October 10, 2002',
                        style:TextStyle(
                            fontSize:16
                        )),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Specialization',style: theme.textTheme.titleLarge
                    ),
                    subtitle: Text("Flutter Developer",
                        style:TextStyle(
                            fontSize:16
                        )),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Experience',style: theme.textTheme.titleLarge
                    ),
                    subtitle: Text("Fresher",
                        style:TextStyle(
                            fontSize:16
                        )),
                  ),
                  Divider(height: 1),

                  Spacer(),
                  Divider(height:1),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text("BACK",style:TextStyle(color:Colors.red)),
                    onTap: () {
                      Get.back(); // Close the drawer
                    },
                  ),
                  Divider(height: 1),
                  SizedBox(height:5),
                ],
              ),
            )
        ),
        appBar: AppBar(
          backgroundColor:Color(0xff6A33FF),
          title: Padding(
            padding: const EdgeInsets.only(top:10,bottom:10),
            child: Text("My Portfolio", style:TextStyle(
              fontSize: 24,
              color:Colors.white,
              letterSpacing: 1,
              fontWeight: FontWeight.w700
            )),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25
            ),
            /// Developer Avatar
            Container(
              padding: EdgeInsets.all(size.height * .01),
              decoration: BoxDecoration(
                color: theme.cardColor,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: size.height * .10,
                backgroundColor: AppColors.appPrimary,
                backgroundImage: AssetImage(
                 AppStrings.imageUrl
                ),
              ),
            ),
        
            // Empty Space
            SizedBox(
              height: size.height * 0.01,
            ),
        
            /// Developer Full Name
            Text(
              DevData.devData.name,
              style: theme.textTheme.displaySmall,
            ),
        
            // Empty Space
            SizedBox(
              height: size.height * 0.02,
            ),
        
            /// Developer Skills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:35),
              child: Center(
                child: Text("    I'm Winstar, a motivated software engineering student with a passion for mobile development using Dart and Flutter 📱."
                    ,style: theme.textTheme.bodyMedium,),
              ),
            ),
        
            // Empty Space
            SizedBox(
              height: size.height * 0.03,
            ),
        
            /// Skills Progress
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                DevData.devData.skillsAndProgress.length,
                    (index) => SkillsProgress(
                  progress: DevData.devData.skillsAndProgress[index].progress,
                  title: DevData.devData.skillsAndProgress[index].name,
                ),
              ),
            ),
            // Empty Space
            Expanded(child: Container()),
        
            /// Next Page
            IconButton(
              color: theme.canvasColor,
              onPressed: nextPage,
              icon: const Icon(Icons.subdirectory_arrow_right_outlined,size:30),
            ),
        
            /// Empty Space
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}