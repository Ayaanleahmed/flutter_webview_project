import 'package:flutter/material.dart';

import 'package:flutter_application_25/fries.dart';
import 'package:flutter_application_25/vegetablepizza.dart';

class cheesepizzascreen extends StatefulWidget {
  const cheesepizzascreen({super.key});

  @override
  State<cheesepizzascreen> createState() => _cheesepizzascreenState();
}

class _cheesepizzascreenState extends State<cheesepizzascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 161, 88),
        title: Text('Wow pizza'),),
      body: SafeArea(child: Column(
        children: [
          Row(
            children: [
              Center(
                child: BottomAppBar(
                  child: Center(
                    child: Row(
                      children: [
                       ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vegetablescreen())), child: Text('vegetable p')),
                        SizedBox(width: 1,),
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cheesepizzascreen())), child: Text('cheese p')),
                                              SizedBox(width: 1,),
                    
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>friesscreen())), child: Text('fries p')),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red,
                 
                  image: DecorationImage(image: AssetImage('assets/download.jpg'),fit: BoxFit.cover)
                    
                  ),
                
                     
                
                  
                  
                  
                ),
                

              ),
               SizedBox(height: 15,),
              Text('CHEESE PIZZA')
             
            ],
            
          )
        ],
        
      )),
    );
  }
}