import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                style: const TextStyle(
                    color: const Color(0xff020202),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Helvetica",
                    fontStyle: FontStyle.normal,
                    fontSize: 20.0),
                text: "Buy Milk"),
          ],
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: null,
      ),
    );
  }
}
