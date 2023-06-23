import 'package:flutter/material.dart';

void main(){
  runApp(Login());
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginn() ,
    );
  }
}
class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  String email='';
  String password='';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'images/Torii Gate to the Unkown.jpeg'
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.4),// since default color of scaffold is white
        body: Stack(
          children:  [
            Container(
              margin: EdgeInsets.only(left:140 ,top:220 ),
              child: const Text(
                style: TextStyle(
                  fontSize: 26,
                  color: Color(0xFF006400),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
                  "Stay Wild \n Earth Child",
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          email=value;
                        });
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white70,
                        filled: true,
                        hintText:"Email Id",
                        prefixIcon: Icon(Icons.account_box),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          password=value;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white70,
                        filled: true,
                        hintText:"Password",
                        prefixIcon: Icon(Icons.key),
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 31,
                            fontWeight: FontWeight.w700,
                            color:  Colors.black,
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:  Colors.black,
                          child: IconButton(
                              onPressed: (){
                                if(email=='raizadaharshit2004@gmail.com'&& password=='at_the_touch_of_love_everyone_becomes_a_poet'){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=> BarbieApp()),
                                  );
                                }
                              },
                              icon: const Icon(Icons.chevron_right,
                                color: Colors.white,
                              ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextButton( onPressed: (){},
                          child: Text(
                              'Register',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ) ,
      ),
    );
  }
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
                      child: Text("Their is Something Inside youu!")
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


