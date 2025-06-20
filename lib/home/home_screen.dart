import 'package:flutter/material.dart';
import 'package:hemant_rajput_portfolio/project_Widgets/view/projects_widget.dart';
import '../bottom_navigation/bottom_nav_widget.dart';
import '../skills_widgets/view/skills_widget.dart';
 // Import the BottomNavWidget

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeContent(), // original layout moved to its own widget
    const Center(child: Text("Projects")), // placeholder
    const Center(child: Text("Skills")), // placeholder
    const Center(child: Text("Contact")), // placeholder
  ];

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavWidget(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          _buildHeader(),
          const SizedBox(height: 24),
          buildProjectList(),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 26),
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                    "Skills",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                buildSkillsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Hi Hemant",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            "Here are your projects",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
      const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/hemant.jpg"),
      ),
    ],
  );
}
