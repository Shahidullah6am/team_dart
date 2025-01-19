
import 'package:flutter/material.dart';
import 'package:team_dart/screens/task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          slivers: [

            SliverToBoxAdapter(child: SizedBox(height: 50)),
            
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        // child: Image.asset(),
                      ),
                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello!'),
                          SizedBox(height: 5),
                          Text('Livia Vaccaro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],
                  ),

                  
                  Icon(Icons.notifications, color: Colors.black),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 25)),


            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(18),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Your todays task \n almost done!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                        SizedBox(height: 25),
                        
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TodaysTaskScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text("View Task",),
                          ),
                        )
                        
                      ],
                    ),
                    
                  ],
                ),
              )
            ),




            
          ],
        ),
      )
    );
  }
}
