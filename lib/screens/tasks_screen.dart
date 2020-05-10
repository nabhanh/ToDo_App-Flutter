import 'package:flutter/material.dart';
import '../widgets/tasks_list.dart';
import 'add_new_task.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddNewTask(),
                  )));
        },
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
                    color: Colors.black54,
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
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
