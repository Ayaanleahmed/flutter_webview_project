import 'package:flutter/material.dart';
import 'package:flutter_application_25/cheesepizza.dart';
import 'package:flutter_application_25/fries.dart';
import 'package:flutter_application_25/main.dart';
import 'package:flutter_application_25/vegetablepizza.dart';

class practicalwidgetss extends StatefulWidget {
  const practicalwidgetss({super.key});

  @override
  State<practicalwidgetss> createState() => _practicalwidgetssState();
}

class _practicalwidgetssState extends State<practicalwidgetss> {

  int selectedPage=0;
  void update(int index){
    setState(() {
      selectedPage =index;
    });
  }

  List<Widget> pagisliat =[
     MyAapp(),
     friesscreen(),
     cheesepizzascreen(),
     vegetablescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Column(
          children: [
            BottomAppBar(
              child: Column(
                children: [
                  pagisliat[selectedPage],
                    ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vegetablescreen())), child: Text('vegetable')),
                        SizedBox(width: 2,),
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cheesepizzascreen())), child: Text('cheese p')),
                                    SizedBox(width: 2,),
                
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>friesscreen())), child: Text('fries p')),
                                 
                ],
              ),
            )
          ],
        )
    );
  }
}