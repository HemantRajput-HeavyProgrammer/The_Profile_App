import '../model/skills_model.dart';

class SkillsRepository {
  static final List<SkillsModel> skillsInfo = [
    SkillsModel(
      skillTitle: 'Software Engineer',
      skillExp: '1 Year',
      skillIcon: 'assets/images/hemant.jpg',
      skillDesc:
          "cross‑platform,widget‑driven UIs, scalable state management, seamless plugin integration, and clean, testable Dart architecture. ",
      skillProject: "4",
    ),

    SkillsModel(
      skillTitle: 'Mern Stack Developer',
      skillExp: '6 Months',
      skillIcon: 'assets/images/hemant.jpg',
      skillDesc:
          "high‑performance, scalable MERN web apps featuring component‑driven UIs, robust state management, seamless API integration, and clean, testable JavaScript architecture.",
      skillProject: "2",
    ),

    SkillsModel(
      skillTitle: 'Microsoft Office',
      skillExp: '4 Years',
      skillIcon: 'assets/images/hemant.jpg',
      skillDesc: "advanced Excel data analysis, Word document automation, PowerPoint presentation design, and Outlook email management.",
      skillProject: "50+",
    ),

  ];
}
