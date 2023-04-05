import 'package:syren_front_end/widgets/bulletpoints.dart';


import 'package:flutter/material.dart';


class BeforeTPage extends StatelessWidget {
  const BeforeTPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Preparing for a Tornado';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop(),),
          title: const Text(title), backgroundColor: Colors.red,
        ),
        body: ListView(
          children:  <Widget>[
            UnorderedList([
                  "Know your area’s tornado risk. In the U.S., the Midwest and the Southeast have a greater risk for tornadoes.",
                  "Know the signs of a tornado, including a rotating, funnel-shaped cloud, an approaching cloud of debris, or a loud roar like a freight train.",
                  "Pay attention to weather reports. Meteorologists can predict when conditions might be right for a tornado.",
                  "Identify and practice going to a safe shelter such as a safe room built using FEMA criteria or a storm shelter built to ICC 500 standards. The next best protection is a small, interior, windowless room or basement on the lowest level of a sturdy building.",
                  "Prepare for long-term stay at home or sheltering in place by gathering emergency supplies, cleaning supplies, non-perishable foods, water, medical supplies and medication.",
                ]),
            Text("Information is gathered from Ready.gov")



          ],
        ),
      ),
    );
  }
}


