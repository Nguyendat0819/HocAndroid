import 'package:flutter/material.dart';
import 'package:demo/second_page.dart';
void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Builder(
                  builder: (context){
                    return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu)
                    );
                  }
              ),
            ),
            drawer: Drawer(
              child:Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        ListTile(
                          leading:Icon(Icons.person),
                          selected: selectedIndex == 0,
                          // 2. Thiết lập màu nền khi được chọn (màu xanh lá)
                          selectedTileColor: Colors.lightGreen.withOpacity(0.3),
                          // 3. Thiết lập màu của leading/trailing khi được chọn
                          selectedColor: Colors.green.shade800,
                          onTap: (){
                            setState(() {
                              selectedIndex = 0;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondPage())
                            );
                          },
                        ),

                        ListTile(
                          leading: Icon(Icons.chat),
                          selected: selectedIndex == 1,
                          // 2. Thiết lập màu nền khi được chọn (màu xanh lá)
                          selectedTileColor: Colors.lightGreen.withOpacity(0.3),
                          // 3. Thiết lập màu của leading/trailing khi được chọn
                          selectedColor: Colors.green.shade800,
                          onTap: (){
                            setState(() {
                              selectedIndex = 1;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondPage())
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.search),
                          selected: selectedIndex == 2,
                          selectedTileColor: Colors.lightGreen.withOpacity(0.3),
                          selectedColor: Colors.green.shade800,
                          onTap: (){
                            setState(() {
                              selectedIndex = 2;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondPage())
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.ring_volume),
                          selected: selectedIndex == 3,
                          selectedTileColor: Colors.lightGreen.withOpacity(0.3),
                          selectedColor: Colors.green.shade800,
                          onTap: (){
                            setState(() {
                              selectedIndex = 3;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondPage())
                            );
                          },
                        )
                  ],
                ),
              ),
            ),
    );
    body: Container();

  }
}