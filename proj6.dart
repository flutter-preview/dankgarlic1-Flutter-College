import 'package:flutter/material.dart';

void main(){
  runApp(paul());
}
class paul extends StatefulWidget {
  const paul({Key? key}) : super(key: key);

  @override
  State<paul> createState() => _paulState();
}

class _paulState extends State<paul> {
  int my_default_index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              // centerTitle: true,
              title: const Text("It has been raining all Night"),
              actions: <Widget>[
                IconButton(onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "Batmobile on its way \n Vengeance wil be Delivered"),
                    ),
                  );
                },
                  icon: Icon(Icons.crisis_alert),
                  tooltip: "Joker is on the loose \n click this button \n if you see him!",
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      child: Text('Drawer Header'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text('Item 1'),
                      leading: Icon(Icons.alarm),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: const Text('Item 2'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]
              ),

            ),

            body: Center(
              child: my_default_index == 0 ? Container(
                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      padding: const EdgeInsets.all(40.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.amber, Colors.redAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.9),
                            spreadRadius: 4,
                            blurRadius: 12,
                            offset: const Offset(5, 5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                        child: Text(
                          "OCD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      padding: const EdgeInsets.all(40.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.amber, Colors.redAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.9),
                            spreadRadius: 4,
                            blurRadius: 12,
                            offset: const Offset(5, 5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                        child: Text(
                          "is my",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      padding: const EdgeInsets.all(40.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.amber, Colors.redAccent],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.9),
                            spreadRadius: 4,
                            blurRadius: 12,
                            offset: const Offset(5, 5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Center(
                        child: Text(
                          "nemesis",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ) : Column(
                children: [
                  Container(
                    height: 180,
                    width: 180,
                    padding: const EdgeInsets.all(40.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.amber, Colors.redAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.9),
                          spreadRadius: 4,
                          blurRadius: 12,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Center(
                      child: Text(
                        "They think I am",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    padding: const EdgeInsets.all(40.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.amber, Colors.redAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.9),
                          spreadRadius: 4,
                          blurRadius: 12,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Hiding in the shadows",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 180,
                    padding: const EdgeInsets.all(40.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.amber, Colors.redAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.9),
                          spreadRadius: 4,
                          blurRadius: 12,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Center(
                      child: Text(
                        "But I am the SHADOWS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_box),
                    label: "My Account"
                ),
              ],
              currentIndex: my_default_index,
              onTap: (int selected_naviagtion_item) {
                setState(() {
                  my_default_index = selected_naviagtion_item;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
