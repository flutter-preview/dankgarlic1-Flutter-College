import 'package:flutter/material.dart';

void main(){
  runApp(BarbieApp());
}
class BarbieApp extends StatefulWidget {
  const BarbieApp({Key? key}) : super(key: key);

  @override
  State<BarbieApp> createState() => _BarbieAppState();
}

class _BarbieAppState extends State<BarbieApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch:Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected_index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 175,
        centerTitle: true,
        title: const Text("I am Barbie Girl"),
        actions: [
          IconButton(onPressed: (){},
            icon: const Icon(Icons.email),
          ),
          IconButton(onPressed: (){
            // DropdownButton(
            //   onChanged:
            //   items: [
            //     DropdownMenuItem(
            //       child: Text("water"),
            //     ),
            //     DropdownMenuItem(
            //       child: Text("water"),
            //     ),
            // DropdownMenuItem(
            //       child: Text("water"),
            //     ),
            // DropdownMenuItem(
            //       child: Text("water"),
            //     ),
            //   ],
            // );
          },
            icon: const Icon(Icons.add_alert),
          ),
          PopupMenuButton(
              itemBuilder:(BuildContext context){
                return [
                  PopupMenuItem(
                      child: Text("Their is Something Inside youu!"),


                  ),
                  PopupMenuItem(
                      child: Text("I am Ryan Gosling FRFR")
                  ),
                ];
              }
          ),
        ],
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: Text('Hello Ken!'),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                ),
              ),
              ListTile(
                title: const Text('I Drive'),
                leading: const Icon(Icons.drive_eta),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.dangerous_rounded),
                title: const Text('I Fight'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: selected_index==0? Container(
        // color: Colors.pink,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.purpleAccent,
              ),
              margin: EdgeInsets.all(50),
              height: 200,
              width: 400,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 70,
                      margin: EdgeInsets.only(left: 50,right: 50),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.network('https://m.media-amazon.com/images/M/MV5BZjg2ZjViMTktNWQ1Yy00ODZiLWE1OTgtNDY3MjI0OGUyNjNhXkEyXkFqcGdeQXVyNTk4NDI4NTE@._V1_.jpg').image,
                        ),
                      )
                  ),
                  Container(
                    height: 100,
                    width: 75,
                    // margin: EdgeInsets.only(right: 50),
                    color: Colors.pink,
                    child: Text("Lalo \n Cartel \n Mexico") ,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 50),

                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondPage()),
                      );

                    },
                    child: Text("Button1"),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const SecondPage()));

                    },
                    child: Text("Button2"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 50),

                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const SecondPage()));

                    },
                    child: Text("Button3"),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> const SecondPage()));

                    },
                    child: Text("Button4"),
                  ),
                )
              ],
            ),
          ],
        ),
      ): selected_index==1? Container(): Container(),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Account",
          ),
        ],
        currentIndex: selected_index,
        onTap: (chosen_index){
          setState(() {
            selected_index=chosen_index;
          });
        },

      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
    );
  }
}

