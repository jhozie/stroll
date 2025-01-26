import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'screens/stroll.dart';
import 'theme/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stroll',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: AppTextStyles.fontFamily,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Stroll(),
    const Stroll(),
    const Stroll(),
    const Stroll(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: const Color(0xFF0F1115),
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          destinations: <NavigationDestination>[
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/vector.svg',
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/bonfire.svg',
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/chat.svg',
              ),
              label: '',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
              ),
              label: '',
            ),
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
        ),
      ),
    );
  }
}
