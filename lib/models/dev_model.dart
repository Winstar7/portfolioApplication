class DevModel {
  final String name;
  final String number;
  final String linkedIn;
  final String mail;
  final String bio;
  final List<SkillsData> skillsAndProgress;
  final List<String> hobbies;
  final List<String> skills;
  final List<String> education;
  final List<String> projectDetails;

 // final String project;
  DevModel({
    required this.name,
    required this.number,
    required this.linkedIn,
    required this.mail,
    required this.bio,
    required this.skillsAndProgress,
    required this.hobbies,
    required this.skills,
    required this.education,
    required this.projectDetails,
   // required this.project,
  });

}

class SkillsData {
  final String name;
  final double progress;
  SkillsData({
    required this.name,
    required this.progress,
  });
}
