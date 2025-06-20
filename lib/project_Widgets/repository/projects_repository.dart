

import '../model/projects_model.dart';

class ProjectsRepository {

  static final List<Project> projectInfo = [
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'WhatsApp Clone',
      projectDesc: "Front‑end Flutter chat interface with Firebase Authentication integration and component‑driven widget architecture.",
    ),
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'Tic Tac Toe',
        projectDesc: " Interactive Flutter-based Tic Tac Toe app featuring responsive grid UI, turn‑based game logic, and seamless state management.",
    ),
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'Profile App',
        projectDesc: "User‑centric Flutter profile app with customizable UI, local data persistence, and smooth animation transitions",
    ),
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'Scientific Calculator',
        projectDesc: "Feature‑rich Flutter calculator with advanced scientific functions ,and precise expression parsing.",
    ),
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'JobHive Website',
      projectDesc: "Responsive MERN‑stack job portal UI with Firebase auth, dynamic job listings, and intuitive search/filter functionality.",
    ),
    Project(
      imagePath: 'assets/images/hemant.jpg',
      title: 'Restaurant Website',
      projectDesc: "Modern MERN‑stack restaurant UI with Firebase auth, interactive menu display, and responsive design for seamless ordering.",
    ),
  ];
  static List<Project> fetchAll() => projectInfo;
}
