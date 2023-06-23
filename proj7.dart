import 'package:flutter/material.dart';

void main(){
  runApp(const DeGuzmaan());
}
class DeGuzmaan extends StatefulWidget {
  const DeGuzmaan({Key? key}) : super(key: key);

  @override
  State<DeGuzmaan> createState() => _DeGuzmaanState();
}

class _DeGuzmaanState extends State<DeGuzmaan> {
  int selected_index=0;
  String Ghundi_1="Да здравствует матушка Россия";
  bool _isChecked=false;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: Builder( // Wrap the Scaffold with a Builder widget
        builder: (BuildContext context) {
          return Scaffold(
            // backgroundColor:const Color.fromRGBO(143, 0, 255, 350),
            appBar: selected_index==0? AppBar(
              title: const Text("My Family did It"),
              actions: [
                IconButton(
                  tooltip: "Check out",
                  onPressed: (){
                    final snack=const SnackBar(
                      content: Text("Lalo Salamanca is Alive Anakin!"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  icon: const Icon(Icons.add_alert),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context){
                    return [
                      const PopupMenuItem(
                        child: Text("And you Treat us like Dogs"),
                      ),
                      const PopupMenuItem(
                        child: Text("IT is Personal!"),
                      ),
                    ];
                  },
                  onSelected: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected: $value')),
                    );
                  },
                ),
              ],
            ):selected_index==1?AppBar(
              title: const Text("Salamanca Money"),
              actions: [
                IconButton(
                  tooltip: "Check out",
                  onPressed: (){
                    final snack=const SnackBar(
                      content: Text("Lalo Salamanca is Alive Anakin!"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  icon: const Icon(Icons.add_alert),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context){
                    return [
                      const PopupMenuItem(
                        child: Text("And you Treat us like Dogs"),
                      ),
                      const PopupMenuItem(
                        child: Text("IT is Personal!"),
                      ),
                    ];
                  },
                  onSelected: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected: $value')),
                    );
                  },
                ),
              ],
            ): AppBar(
              title: const Text("Salamanca Blood"),
              actions: [
                IconButton(
                  tooltip: "Check out",
                  onPressed: (){
                    final snack=const SnackBar(
                      content: Text("Click on the Button!"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  icon: const Icon(Icons.add_alert),
                ),
                PopupMenuButton(
                      itemBuilder: (BuildContext context){
                       return [
                         const PopupMenuItem(
                             child: Text("And you Treat us like Dogs"),
                         ),
                         const PopupMenuItem(
                             child: Text("IT is Personal!"),
                         ),
                       ];
                       },
                  onSelected: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected: $value')),
                    );
                  },
                ),
              ],
            ),

            drawer: Drawer(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      child: Text('Salamanca Inventory'),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    ListTile(
                      title: const Text('Tuco Salamanca'),
                      leading: const Icon(Icons.alarm),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text('The Twins'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]
              ),

            ),

            body: selected_index==0? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.scaleDown,
                  image: NetworkImage('https://www.ladbible.com/cdn-cgi/image/width=648,quality=70,format=jpeg,fit=contain,dpr=1/https%3A%2F%2Fs3-images.ladbible.com%2Fs3%2Fcontent%2F6463bfb660b021ad58cc9d7cccc157ca.png'),
                ),
              ),
              child: SizedBox.expand(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        color: Colors.black,
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        color: Colors.green,
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        ),
                      ),
                    ],

                  ),
                  Stack(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        color: Colors.deepOrange,
                      ),
                      Positioned(
                        left: 15,
                        top: 15,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            ): selected_index==1? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerRight,
                  fit: BoxFit.scaleDown,
                  image: NetworkImage('https://e1.pxfuel.com/desktop-wallpaper/615/626/desktop-wallpaper-lalo-salamanca-thumbnail.jpg'),
                ),
              ),
              child: SizedBox.expand(
              child: Padding(
              padding: const EdgeInsets.only(right: 195),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.teal,
                      ),
                      Positioned(
                        left: 25,
                        top: 25,
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.amber,
                      ),
                      Positioned(
                        left: 25,
                        top: 25,
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.cyanAccent,
                        ),
                      ),
                    ],

                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.limeAccent,
                      ),
                      Positioned(
                        left: 25,
                        top: 25,
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
              ),
            ): Container(
              decoration: const BoxDecoration(
                image:DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.scaleDown,
                  image:  NetworkImage("https://i.ytimg.com/vi/jXD4OCR7v0A/maxresdefault.jpg"),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              Ghundi_1="Long Live Mother Russia";
                            });
                          },
                          child: Center(
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Text(
                                Ghundi_1,
                                style: const TextStyle(
                                  fontSize: 26,


                                ),
                              ),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                      ),
                    ),
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;

                        });
                      },
                    ),
                    const Text('Checkbox'),
                  ],
                ),
              ),

            ),



            bottomNavigationBar: BottomNavigationBar(
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.format_align_left),
                  label: "Row",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.format_align_center),
                  label: "Column",
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.radio_button_checked_sharp),
                  label: "Stfl",
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
        },
      ),
    );
  }
}