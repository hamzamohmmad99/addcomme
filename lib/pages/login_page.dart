import 'package:brforetest_app/config/get_it.dart';
import 'package:brforetest_app/pages/home_page.dart';
import 'package:brforetest_app/res/all_assets.dart';
import 'package:brforetest_app/res/all_colors.dart';
import 'package:brforetest_app/res/all_syteltext.dart';
import 'package:brforetest_app/res/all_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorone,
      body: Stack(
        children: [
          Positioned(
            right: 50,
            top: 189,
            child: Container(
              width: 288,
              height: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: colortow),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            (email),
                            style: styleemail,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: emailcontroller,
                        decoration: InputDecoration(
                          hintText: "Example@gmail.com",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: colorone),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: colorone,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorone),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            (password),
                            style: styleemail,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: password,
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: colorone),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: colorone,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: colorone),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:35 ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(value: false,onChanged: (value) {
                             core.get<SharedPreferences>().setString("user", emailcontroller.text);
                      
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()),);
                          },),
                          Text('Remmber Me ',style: styleemail,)
                        ],
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: colortow,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: 120,
                height: 120,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 90,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: colorthree,
                  borderRadius: BorderRadius.circular(100),
                ),
                width: 100,
                height: 100,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 90,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                width: 100,
                height: 100,
                child: Image.asset(logeinimag),
              ),
            ),
          ),
           
        ],
      ),
    );
  }
}
