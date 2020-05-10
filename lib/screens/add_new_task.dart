import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                ),
              ),
              TextField(
                autofocus: true,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Add',
                ),
                color: Colors.black54,
              )
            ],
          ),
        ),
      ),
    );
  }
}
