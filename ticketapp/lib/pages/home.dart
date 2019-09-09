import 'package:flutter/material.dart';

import 'chat.dart';
import 'dashboard.dart';
import 'profile.dart';
import 'settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Properties of the home page
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Settings()

  ]; //to store tab views

  //Active page (Tab)
  Widget currentScreen = Dashboard(); //Initial screen in view

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      //Floating Action Button(FAB)
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed:(){},
      ),

      //Floating Action Button position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}