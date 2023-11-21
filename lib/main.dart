import 'package:flutter/material.dart';

import 'FavouriteScreen.dart';
import 'HomeScreen.dart';
import 'ProfileScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kulshreshtha Prakashan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Kulshreshtha Prakashan'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Kulshreshtha Prakashan"),
        // color of app bar
        backgroundColor: Colors.deepPurple,
        // title color
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          // font style to arial
          fontFamily: "Oswald",
        ),
        centerTitle: true,
        ),
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Liked',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex:currentIndex,
            selectedItemColor: Colors.deepPurple,
            onTap: (index) {
              setState(() => currentIndex = index);
              // Handle navigation item taps here
            },
          ),
        ),
      );
  }
}