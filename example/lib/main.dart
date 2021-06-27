import 'package:flutter/material.dart';
import 'package:online_status_checker/online_status_checker.dart';

void main() async {
  runApp(MaterialApp(
    home: OnlineStatusChecker(
      child: HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online Status Checker'),
      ),
      body: Center(
        child: Text(
          'You are Online!',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
