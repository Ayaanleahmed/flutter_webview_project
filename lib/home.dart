import 'package:flutter/material.dart';

import 'package:flutter_application_25/cheesepizza.dart';
import 'package:flutter_application_25/fries.dart';
import 'package:flutter_application_25/social_media/facebook.dart';
import 'package:flutter_application_25/social_media/twitter.dart';
import 'package:flutter_application_25/vegetablepizza.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homescreen extends StatefulWidget {
   homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 161, 88),
        title: Text('Wow pizza'),
        actions: [
          Row(
            children: [
              IconButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyWeb())), icon: Icon(Icons.facebook)),
              IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>telegramscreen())), icon: Icon(FontAwesomeIcons.twitter)),

            ],
          )
        ],
        ),
      body: SafeArea(child: Column(
        children: [
          Row(
            children: [
              Center(
                child: BottomAppBar(
                  child: Center(
                    child: Row(
                      children: [
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vegetablescreen())), child: Text('vegetable')),
                        SizedBox(width: 2,),
                        ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cheesepizzascreen())), child: Text('cheese p')),
                                    SizedBox(width: 2,),
                
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
                child: Padding(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    height: 300,
                    width: 480,
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child:Image.asset('assets/images (4).jpeg',fit: BoxFit.cover,) 
                    
                    ,
                    
                  ),
                ),
                

              ),
               SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: Column(
                  children: [
                    Text('HI WAXAN KACAWINAYNA SIDA KUHELILAHED'),
                     Text('PIZZA  CASRI AH OO AAD UMACAN BADAN O'),
                
                
                  ],
                ),
              )
            ],
            
          )
        ],
        
      )),
    );
  }
}