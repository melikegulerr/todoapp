import 'package:flutter/material.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "add a new task",
              ),
            ),
            //buttons save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  text: "save",
                  onpressed: onSave,
                ),
                SizedBox(
                  width: 8,
                ),
                // cancel button
                MyButton(
                  text: "cancel",
                  onpressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
