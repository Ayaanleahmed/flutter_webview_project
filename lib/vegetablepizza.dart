import 'package:flutter/material.dart';
import 'package:flutter_application_25/cheesepizza.dart';
import 'package:flutter_application_25/fries.dart';


class vegetablescreen extends StatefulWidget {
  const vegetablescreen({super.key});

  @override
  State<vegetablescreen> createState() => _vegetablescreenState();
}

class _vegetablescreenState extends State<vegetablescreen> {
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
                child:  Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.orange,
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images.jpeg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                

              ),
               SizedBox(height: 15,),
              Text('FEGETABLE PIZZA')
             
            ],
            
            
          )
          
        ],
        
        
      )),
    );
  }
}