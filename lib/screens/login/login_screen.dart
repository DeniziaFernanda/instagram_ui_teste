import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intagram_ui_teste/screens/dashbord/dashbord_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/Instagram Logo.svg"),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/image profile.jpg"),
                          fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  const Text("denizia23", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  const DashbordScreen(),), (route) => false);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 14),),  
                        ),
                      ),
                    ),
                  ),
            
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Switch accounts", style: TextStyle(color: Color(0xFF3797EF), fontWeight: FontWeight.w600),),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(children: [
              Divider(color: Colors.grey.shade400,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account? ", style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                GestureDetector(child: const Text("Sign up.", style: TextStyle(fontWeight: FontWeight.w500),))
              ],)
            ],),
          )
        ],
      ),

    ));
  }
}
