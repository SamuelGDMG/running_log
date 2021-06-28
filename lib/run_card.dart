import 'package:flutter/material.dart';
import './run_model.dart';

class RunCard extends StatelessWidget {
  final RunModel runData;

  RunCard({required this.runData});

  @override
  Widget build(BuildContext context) {
    final color = getColor(runData.intensity);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(
            width: 4,
            color: color,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Expanded(
              child: header(color, runData.date),
            ),
            Expanded(
              flex: 2,
              child: route(runData.route),
            ),
            Expanded(
              child: timeAndDistance(runData.time, runData.distance),
            ),
          ],
        ),
      ),
    );
  }

  Color getColor(int intensity) {
    // Easy run
    if (intensity == 1) return Colors.lightGreen;
    // Medium run
    if (intensity == 2) return Colors.orangeAccent;
    // Hard run
    if (intensity == 3) return Colors.redAccent;

    // TBD
    return Colors.black54;
  }

  Widget header(Color color, String date) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.calendar_today_rounded,
          color: color,
          size: 32,
        ),
        Flexible(
          child: Text(date),
        ),
      ],
    );
  }

  Widget route(String runRoute) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.place_outlined,
          color: Colors.black87,
          size: 32.0,
        ),
        Text(
          runRoute,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget timeAndDistance(String time, String distance) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(
              Icons.timer,
              size: 18.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0),
              child: Text(time),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.run_circle_outlined,
              size: 18.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0),
              child: Text(distance),
            ),
          ],
        ),
      ],
    );
  }
}
