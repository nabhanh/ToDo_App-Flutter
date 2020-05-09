import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60,
              left: 30,
              right: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          style: const TextStyle(
                              color: const Color(0xfffffdfd),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Helvetica",
                              fontStyle: FontStyle.normal,
                              fontSize: 50.0),
                          text: "To-Do"),
                    ],
                  ),
                ),
                // 12 Tasks
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: const TextStyle(
                            color: const Color(0xfffffdfd),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Helvetica",
                            fontStyle: FontStyle.normal,
                            fontSize: 20.0),
                        text: "12 Tasks ",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
//Flexible(
//child: Container(
//child: Column(
//children: <Widget>[
//Row(),
//Row(),
//Row(),
//],
//),
//decoration: BoxDecoration(
//color: const Color(0xffffffff),
//),
//),
//),
