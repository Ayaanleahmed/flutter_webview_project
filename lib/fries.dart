import 'package:flutter/material.dart';

import 'package:flutter_application_25/cheesepizza.dart';
import 'package:flutter_application_25/vegetablepizza.dart';

class friesscreen extends StatefulWidget {
  const friesscreen({super.key});

  @override
  State<friesscreen> createState() => _friesscreenState();
}

class _friesscreenState extends State<friesscreen> {
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
                 
                  image: DecorationImage(image: AssetImage('assets/images (1).jpeg'),fit: BoxFit.cover)
                    
                  ),
                
                     
                
                  
                  
                  
                ),
                
                

              ),
              SizedBox(height: 15,),
              Text('FRIES PIZZA')
             
            ],
            
            
          )
        ],
        
      )),
    );
  }
}















