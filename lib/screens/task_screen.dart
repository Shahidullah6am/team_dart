import 'package:flutter/material.dart';

class TodaysTaskScreen extends StatelessWidget {
  const TodaysTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Icon(Icons.arrow_circle_left_outlined,color: Colors.black),

              Text("Today's Tasks",style: TextStyle(color: Colors.black)),

              Icon(Icons.notification_add,color: Colors.black,)
            ]),
            const SizedBox(height: 10),

            SizedBox(
              height: 100,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: index != 3 ? Colors.white : Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text('May',style: TextStyle(color: index == 3 ? Colors.white : Colors.black.withValues(alpha: 70),fontSize: 12)),
                      Text('23',style: TextStyle(color: index == 3 ? Colors.white : Colors.black.withValues(alpha: 100),fontSize: 14)),
                      Text('Fri',style: TextStyle(color: index == 3 ? Colors.white : Colors.black.withValues(alpha: 70),fontSize: 12)),
                    ]),
                  );
                },
                separatorBuilder: (context, index){
                  return SizedBox(width: 10);
                },
              ),
            ),
            const SizedBox(height: 10),

            Wrap(children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Text('All',style: TextStyle(color: Colors.white,fontSize: 12)),
              ),
              const SizedBox(width: 10,),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withValues(alpha: 10),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Text('To DO',style: TextStyle(color: Colors.purpleAccent.withValues(alpha: 70),fontSize: 12)),
              ),
              const SizedBox(width: 10,),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withValues(alpha: 10),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Text('In Progress',style: TextStyle(color: Colors.purpleAccent.withValues(alpha: 70),fontSize: 12)),
              ),
              const SizedBox(width: 10,),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withValues(alpha: 10),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Text('dfjskdflskf',style: TextStyle(color: Colors.purpleAccent.withValues(alpha: 70),fontSize: 12)),
              )

            ]),
            const SizedBox(height: 10),

            Container(
              width: 400,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white ,
                  borderRadius: BorderRadius.circular(10)
              ),

              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text('Gerocery',style: TextStyle(color: Colors.black.withValues(alpha: 70),fontSize: 12)),
                Text('Market Recharch',style: TextStyle(color:  Colors.black.withValues(alpha: 100),fontSize: 14)),
                Text('100 ap',style: TextStyle(color: Colors.black.withValues(alpha: 70),fontSize: 12)),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}