import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_provider_and_hive/controllers/main_screen_notifier.dart';
import 'package:shopping_app_provider_and_hive/sharedApp/bottom_nav_bar.dart';
import 'package:shopping_app_provider_and_hive/ui/cart_page.dart';
import 'package:shopping_app_provider_and_hive/ui/home_page.dart';
import 'package:shopping_app_provider_and_hive/ui/profile_page.dart';
import 'package:shopping_app_provider_and_hive/ui/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> pageList = [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
    
  ];

  int pageIndex = 4;
  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: pageList[pageIndex],
      bottomNavigationBar: SafeArea(
        child: Padding(padding:  EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBar(onTap: (){}, icon: Icons.home),
              BottomNavBar(onTap: (){}, icon: Icons.search),
              BottomNavBar(onTap: (){}, icon: Icons.add),
              BottomNavBar(onTap: (){}, icon: Icons.card_travel),
              BottomNavBar(onTap: (){}, icon: Icons.person),
            ],
          ),
          
        ),
        ),

      ),
    );
     
   
  }
}



