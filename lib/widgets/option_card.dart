import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.function,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Color color;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Padding(
        padding: const EdgeInsets.all(
          10.0,
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
