import 'package:flutter/cupertino.dart';
//This will be a settings page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Center(
          child: Text(
              "This is a settings page"
          ),
        )
    );
  }
}
