import 'package:flutter/material.dart';

import '../model/skills_model.dart';
import '../repository/skills_repository.dart';

Widget buildSkillsList() {
  final skillsInfo = SkillsRepository.skillsInfo;

  return SizedBox(
  width: double.infinity,
  height: 280,
  child: ListView.builder(
    itemCount: skillsInfo.length,
    itemBuilder: (context, index) {
      final skills = skillsInfo[index];
      return SkillsCard(skill: skills);
    },
  ),
      );
}

class SkillsCard extends StatelessWidget {
  final SkillsModel skill;
  const SkillsCard({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(skill.skillIcon),
              radius: 30,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skill.skillTitle,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Exp: ${skill.skillExp}"),
                      const SizedBox(width: 10),
                      Text("Projects: ${skill.skillProject}"),
                    ],
                  ),
                  Text(
                    skill.skillDesc,
                    style: const TextStyle(fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}