import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lab6_assignment/cubit/cubit.dart';
import 'package:lab6_assignment/cubit/states.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Basketball_Points_Counter(),
    );
  }
}

class Basketball_Points_Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ScoreCubit(),
      child: BlocConsumer<ScoreCubit, ScoresStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepOrange,
              title: Text("Basketball Score Counter"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Team A",
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            ScoreCubit.get(context).a.toString(),
                            style: TextStyle(
                                fontSize: 110,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 104, 103, 103)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add1(1);
                            },
                            child: Text(
                              "Add 1 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 252, 115, 74)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add2(1);
                            },
                            child: Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 252, 115, 74)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add3(1);
                            },
                            child: Text(
                              "Add 3 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 252, 115, 74)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 350,
                      child: VerticalDivider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Team B",
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            ScoreCubit.get(context).b.toString(),
                            style: TextStyle(
                                fontSize: 110,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 104, 103, 103)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add1(2);
                            },
                            child: Text(
                              "Add 1 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add2(2);
                            },
                            child: Text(
                              "Add 2 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 252, 115, 74)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScoreCubit.get(context).add3(2);
                            },
                            child: Text(
                              "Add 3 point",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 252, 115, 74)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    ScoreCubit.get(context).reset();
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 252, 115, 74)),
                )
              ],
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
