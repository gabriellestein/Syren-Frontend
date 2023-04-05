import 'package:flutter/material.dart';

import 'disaters/tornado/tornado.dart';


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
            ListTile(
              leading: Icon(Icons.cyclone),
              title: Text('Hurricanes'),
            ),
          ],
        ),
      ),
    );
  }
}