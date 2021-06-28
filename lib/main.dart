import 'package:flutter/material.dart';
import './run_card.dart';
import './run_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allRuns = RunModel.allRuns();

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print('add entry'),
        ),
        body: ListView.builder(
          itemCount: allRuns.length,
          itemBuilder: (context, index) {
            return RunCard(runData: allRuns[index]);
          },
        ),
      ),
    );
  }
}
