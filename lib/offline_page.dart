import 'package:flutter/material.dart';

class OfflinePage extends StatelessWidget {
  final String? message;
  OfflinePage({this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.signal_cellular_connected_no_internet_4_bar_sharp,
            size: 100,
          ),
          Text(
            message ?? 'No Connection!\nPlease check your network settings',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
