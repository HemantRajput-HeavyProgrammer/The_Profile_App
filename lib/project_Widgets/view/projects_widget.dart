import 'package:flutter/material.dart';

import '../model/projects_model.dart';
import '../repository/projects_repository.dart';



Widget buildProjectList() {
  final List<Project> projectInfo = ProjectsRepository.projectInfo;
  return SizedBox(
    height: 300,
    width: double.infinity,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: projectInfo.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final proj = projectInfo[index];
        return ProjectCard(project: proj);
      },
    ),
  );
}






class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    super.key, // Using super.key for consistency
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 280,
      child: Card(
        color: Colors.blueAccent,
        margin: const EdgeInsets.only(top: 40, right: 20 ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(project.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              project.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                project.projectDesc,
                style: const TextStyle(fontSize: 16),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}