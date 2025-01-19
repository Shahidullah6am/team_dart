import 'package:flutter/material.dart';
import 'package:team_dart/screens/home_screen.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*bottomNavigationBar: BottomAppBar(
    elevation: 5,
    notchMargin: 5,
    shape: const CircularNotchedRectangle(),
    child: Padding(
    padding: const EdgeInsets.all(10),
    child: Row(children: [

    BottomNavItemWidget(iconData: Icons.home, isSelected: _pageIndex == 0, onTap: () => _setPage(0)),

    BottomNavItemWidget(iconData: Icons.list_alt_rounded, isSelected: _pageIndex == 1, onTap: () {
    _navigateRequestPage();
    }),

    BottomNavItemWidget(iconData: Icons.shopping_bag, isSelected: _pageIndex == 2, onTap: () => _setPage(2)),

    BottomNavItemWidget(iconData: Icons.person, isSelected: _pageIndex == 3, onTap: () => _setPage(3)),

    ]),
    ),
    ),*/
      body: Column(children: [

        Image.asset('images/onboarding.png'),
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [

            Text('Task Management & To-Do List', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            SizedBox(height: 20),
            Text('This productive tool is design to help you better manage your task project-wise conveniently!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
            SizedBox(height: 20),

           SizedBox(
             width: double.infinity,
             child: ElevatedButton(
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.blue,
                 padding: EdgeInsets.symmetric(vertical: 15),
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
               ),
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   SizedBox(width: 10),
                   Text('Lets Start', style: TextStyle(fontSize: 20, color: Colors.white)),
                    Icon(Icons.arrow_forward, color: Colors.white),
                 ],
               ),
             ),
           ),

          ]),
        ),

      ]),
    );
  }
}
