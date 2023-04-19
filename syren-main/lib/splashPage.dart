import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Container(height:100, width:100, color:  Colors.pink,),
            Container(
              child: Text(
                'syren - coming soon', style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'verdana',
                  fontWeight: FontWeight.bold
              ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}