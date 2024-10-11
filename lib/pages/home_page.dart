import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text("Instagram", style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black,),
        ),
        actions: [

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.tv, color: Colors.black,),
          ),

          IconButton(
            onPressed: (){},
            icon: Icon(Icons.send_sharp, color: Colors.black,),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int index){
          setState(() {
            currentPage = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
