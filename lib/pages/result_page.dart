import 'package:brforetest_app/config/get_it.dart';
import 'package:brforetest_app/res/all_colors.dart';
import 'package:brforetest_app/res/all_syteltext.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


String name=core.get<SharedPreferences>().getString('user').toString();
class Resultpage extends StatelessWidget {
   const Resultpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
         'result',
          
        ),
        
      ),
      backgroundColor: colorone,
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Text('Mr. $name', style: styleemail),
             
              
            ],
          ),
        ),
      ),
    );
  }
}
