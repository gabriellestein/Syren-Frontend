import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/bulletpoints.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Welcome to the SYREN app';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title), backgroundColor: Colors.red,
          ),
        body:
          Container(
        child: SingleChildScrollView(


          child: Column(
            children: [
              Text("We are an emergency resource app.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Our goal is to provide users with a centralized hub of emergency information such as:  ",
                style: TextStyle(fontSize: 20),),
              Text('• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • '),
              UnorderedListItem('Emergency phone numbers'),
              UnorderedListItem('Guide pages for natural disasters'),
              UnorderedListItem('Important locations near you (hospitals, police stations, etc.)'),
              UnorderedListItem('Go-bag essentials'),
              Text('• • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • • '),


            ],
          )


        )

          )
      )

    );
  }
}
