import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: Icon(Icons.circle_rounded),
      title: Text('time of scan'),
      subtitle: Text('type of scan'),
    );
  }
}
