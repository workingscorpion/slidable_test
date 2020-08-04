import 'package:flutter/material.dart';
import 'package:slidable_test/slidablePage.dart';

class VolunteerListTile extends StatefulWidget {
  VolunteerListTile(this.volunteerList);

  var volunteerList = [];

  @override
  _VolunteerListTileState createState() => _VolunteerListTileState();
}

class _VolunteerListTileState extends State<VolunteerListTile> {
  @override
  Widget build(BuildContext context) {
    print(this.widget.volunteerList);
    return Container(
      height: MediaQuery.of(context).size.height * 0.53,
      child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: this.widget.volunteerList.length,
          itemBuilder: (BuildContext context, int index) {
            return SlidablePage();
          }),
    );
  }
}
