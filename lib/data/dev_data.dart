
import '../models/dev_model.dart';

/// Custom Class for storing Developer Data locally
class DevData {
  DevData._();

  static DevModel devData = DevModel(
    name: "Winstar . K",
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'FlutterDeveloper',
        progress: 0.9,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 1,
      ),
    ],
    hobbies: <String>[
      "Learning about Development",
      "Editing Videaos",
      "Playing Cricket",
    ],
    skills:<String>[
      " Oops ",
     " Dart ",
      "Widgets",
     " GetX ",
     " Rest API ",
      "Firebase"
    ],
    education:<String>[
      " B.Tech.IT ",
      " HSC ",
      " SSLC "
    ],
   projectDetails: <String>[
     "Flutter Used for creating a responsive and visually appealing user interface in FrontEnd",
     " FireBase Provides authentication services and a real-time database for managing data in BackEnd",
     " GetX Implemented for efficient state management and seamless data handling ",
    "Developed custom Flutter widgets to enhance the user experience and maintain consistency",
   ],
   // project: "Food Delivery Application : Developed in Flutter with Getx StateManagement.Programming Language: Dart.",
    number: '9751252436',
    mail: 'winstarkennedy777@gmail',
    linkedIn:"Winstar .K"
  );

  static const String devBio = """
I'm Winstar,Recently I'm completed my bachelor's degree on INFORMATION TECHNOLOGY from ERODE SENGUNTHAR ENGINEERING COLLEGE""";
}
