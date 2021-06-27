# online_status_checker

A Widget that checks for the active internet connection status of the device and returns a widget depending on the internet status.

## Getting Started

It designed to be an easy and quick solution for the applications which requires an active internet connection to be ready on the device.

When the device is offline OnlineStatusChecker will return a widget (by default a page that show a message) otherwise the child will be returned.

```dart
void main() async {
  runApp(MaterialApp(
      home: OnlineStatusChecker(
        child: HomePage(),
      ),
  ));
}
```

You can provide the offlineChild, offlineMessage and checkInterval values optionally.