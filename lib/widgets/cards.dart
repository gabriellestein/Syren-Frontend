import 'package:flutter/material.dart';

import 'package:syren_front_end/navpages/disaters/tornado/tornado.dart';


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
            ListTile(
                leading: Icon(Icons.tornado),
                title: Text('Tornadoes'),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TornadoPage(),),);}
            ),
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text('Severe Thunderstorms'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0,),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/tornado.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text("YOUR TEXT", style: TextStyle(fontWeight: FontWeight.w900),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}