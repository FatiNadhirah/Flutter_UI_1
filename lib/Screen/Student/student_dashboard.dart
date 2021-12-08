import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umpds_test_two/Screen/Welcome/welcome.dart';
import 'package:umpds_test_two/Screen/Student/student_profile.dart';
import 'package:umpds_test_two/Screen/Student/Test/testpage.dart';
import 'package:umpds_test_two/Screen/Student/student_result.dart';

class Student_Dashboard extends StatefulWidget {
  //const Student_Dashboard({Key? key}) : super(key: key);

  @override
  _Student_DashboardState createState() => _Student_DashboardState();
}

class _Student_DashboardState extends State<Student_Dashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Student Dashboard',
          style: TextStyle(
            color: Colors.white,
          ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 0.1),
            child:  TextButton(
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => welcome()))
              },
              child: Row ( // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Icon(Icons.logout,
                    size: 25.0,
                    color: Colors.white,),
                ],
              ),
            ),
          ),
        ],
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 20.0,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
        children: [

          //Profile
          Material( color: Colors.grey[200],
            elevation: 10.0,
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(24.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //image
                        Material(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/user_student.png',
                              fit: BoxFit.contain,
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                        ),

                        //text
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfile())); //to student_profile.dart
                            },
                            child: Text("Profile",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Question
          Material( color: Colors.grey[200],
            elevation: 10.0,
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(24.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //image
                        Material(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/test.png',
                              fit: BoxFit.contain,
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                        ),

                        //text
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Test())); //to home.dart
                            },
                            child: Text("Personality Test",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Report
          Material( color: Colors.grey[200],
            elevation: 10.0,
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(24.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //image
                        Material(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/result.png',
                              fit: BoxFit.contain,
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                        ),

                        //text
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => StudentResult())); //to home.dart
                            },
                            child: Text("Test Result",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 200.0),
          StaggeredTile.extent(1, 200.0),
          StaggeredTile.extent(1, 200.0),
        ],
      ),
    );
  }
}


