import 'package:flutter/material.dart';
import 'package:syren_front_end/navpages/disaters/hurricane/after.dart';
import 'package:syren_front_end/navpages/disaters/hurricane/during.dart';
import 'package:syren_front_end/navpages/disaters/thunderstorm/before.dart';
import 'package:syren_front_end/navpages/disaters/thunderstorm/during.dart';
import 'package:syren_front_end/navpages/disaters/tornado/after.dart';
import 'package:syren_front_end/navpages/disaters/tornado/before.dart';
import 'package:syren_front_end/navpages/disaters/tornado/during.dart';
import 'package:syren_front_end/navpages/disaters/flood/before.dart';
import 'package:syren_front_end/navpages/disaters/flood/during.dart';
import 'package:syren_front_end/navpages/disaters/flood/after.dart';
import 'package:syren_front_end/navpages/disaters/wildfire/before.dart';
import 'package:syren_front_end/navpages/disaters/wildfire/during.dart';
import 'package:syren_front_end/navpages/disaters/wildfire/after.dart';
import 'package:syren_front_end/navpages/disaters/thunderstorm/after.dart';

import 'disaters/hurricane/before.dart';


class PrepPage extends StatelessWidget {
  const PrepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Natural Disasters';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title), backgroundColor: Colors.red,
        ),
        body: ListView(
          children:  <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(


                    children: [
                      ListTile(
                        title: Text("FLOODING", style: TextStyle(fontWeight: FontWeight.bold),),
                        tileColor: Colors.redAccent,
                      ),
                      Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0,),
                          image: DecorationImage(
                            image: AssetImage('assets/images/flood.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.redAccent,
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                          child: Text("Click the links below for information on what to do before, during, and after this natural disaster.")
                      ),
                      ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('BEFORE'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeFPage(),),);},
                            ),
                            TextButton(
                              child: const Text('DURING'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DuringFPage(),),);},
                            ),
                            TextButton(
                              child: const Text('AFTER'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AfterFPage(),),);},
                            )
                          ]
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(


                    children: [
                      ListTile(
                        title: Text("WILDFIRES", style: TextStyle(fontWeight: FontWeight.bold),),
                        tileColor: Colors.redAccent,
                      ),
                      Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0,),
                          image: DecorationImage(
                            image: AssetImage('assets/images/wildfire.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.redAccent,
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                          child: Text("Click the links below for information on what to do before, during, and after this natural disaster.")
                      ),
                      ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('BEFORE'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeWPage(),),);},
                            ),
                            TextButton(
                              child: const Text('DURING'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DuringWPage(),),);},
                            ),
                            TextButton(
                              child: const Text('AFTER'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AfterWPage(),),);},
                            )
                          ]
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Column(


                  children: [
                    ListTile(
                      title: Text("TORNADOES", style: TextStyle(fontWeight: FontWeight.bold),),
                      tileColor: Colors.redAccent,
                    ),
                    Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1.0,),
                        image: DecorationImage(
                          image: AssetImage('assets/images/tornado.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.redAccent,
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Click the links below for information on what to do before, during, and after this natural disaster.")
                    ),
                    ButtonBar(
                      children: [
                        TextButton(
                          child: const Text('BEFORE'),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeTPage(),),);},
                        ),
                        TextButton(
                          child: const Text('DURING'),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DuringTPage(),),);},
                        ),
                        TextButton(
                          child: const Text('AFTER'),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AfterTPage(),),);},
                        )
                      ]
                    )
                  ],
                )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(


                    children: [
                      ListTile(
                        title: Text("THUNDERSTORMS", style: TextStyle(fontWeight: FontWeight.bold),),
                        tileColor: Colors.redAccent,
                      ),
                      Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0,),
                          image: DecorationImage(
                            image: AssetImage('assets/images/thunderstorm.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.redAccent,
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                          child: Text("Click the links below for information on what to do before, during, and after this natural disaster.")
                      ),
                      ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('BEFORE'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeSPage(),),);},
                            ),
                            TextButton(
                              child: const Text('DURING'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DuringSPage(),),);},
                            ),
                            TextButton(
                              child: const Text('AFTER'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AfterSPage(),),);},
                            )
                          ]
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Column(


                    children: [
                      ListTile(
                        title: Text("HURRICANES", style: TextStyle(fontWeight: FontWeight.bold),),
                        tileColor: Colors.redAccent,
                      ),
                      Container(
                        height: 300.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.0,),
                          image: DecorationImage(
                            image: AssetImage('assets/images/hurricane.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          color: Colors.redAccent,
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.centerLeft,
                          child: Text("Click the links below for information on what to do before, during, and after this natural disaster.")
                      ),
                      ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('BEFORE'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => BeforeHPage(),),);},
                            ),
                            TextButton(
                              child: const Text('DURING'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DuringHPage(),),);},
                            ),
                            TextButton(
                              child: const Text('AFTER'),
                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AfterHPage(),),);},
                            )
                          ]
                      )
                    ],
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}