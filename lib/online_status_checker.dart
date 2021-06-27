library online_status_checker;

import 'package:flutter/material.dart';
import 'package:online_status_checker/offline_page.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Online Status Checker is an easy to use widget that shows an info page if the device is offline.
/// When the device has an active internet connection the [child] widget will be returned.
class OnlineStatusChecker extends StatelessWidget {
  const OnlineStatusChecker({
    Key? key,
    required this.child,
    this.offlineChild,
    this.offlineMessage,
    this.checkInterval = const Duration(seconds: 15),
  }) : super(key: key);

  /// The widget which will be returned when the device is online
  final Widget child;

  /// Widget to show when the device is offline
  /// If it is not provided a default page will be shown
  final Widget? offlineChild;

  /// A String message to use with the default [offlineChild]
  final String? offlineMessage;

  /// The interval between periodic checks.
  /// Defaults to (15 seconds).
  final Duration checkInterval;

  @override
  Widget build(BuildContext context) {
    InternetConnectionChecker().checkInterval = this.checkInterval;

    return StreamBuilder(
        stream: InternetConnectionChecker().onStatusChange,
        builder: (context, AsyncSnapshot<InternetConnectionStatus> value) {
          return value.data == InternetConnectionStatus.connected
              ? child
              : (offlineChild ??
                  OfflinePage(
                    message: offlineMessage,
                  ));
        });
  }
}
