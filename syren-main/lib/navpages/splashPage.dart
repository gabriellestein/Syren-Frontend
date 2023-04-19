import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainMain.dart';
import 'navpages/mainMain.dart';

class splashPage extends StatefulWidget {
  const splashPage({Key? key}) : super(key: key);

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage(
      //switch to my home page instead when needed
      //MyHomePage(
      //       title:'Syren',
    )));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:100,
              width:100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Text(
                'Syren', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}// TODO Implement this library.