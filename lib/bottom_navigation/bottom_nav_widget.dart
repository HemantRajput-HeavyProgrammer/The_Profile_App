import 'package:flutter/material.dart';

class BottomNavController extends ChangeNotifier {
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

class BottomNavWidget extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavWidget({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.deepPurple,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: "Projects",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: "Skills",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: "Contact",
        ),
      ],
    );
  }
}
