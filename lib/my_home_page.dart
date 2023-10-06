// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> popMenu = ["Setting", "Logout", "About"];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          title: Text("dự án nhóm 2",
              style: TextStyle(
                fontFamily: "Relaway",
                color: Colors.green,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return popMenu.map((e) {
                  return PopupMenuItem(child: Text(e));
                }).toList();
              },
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.black,
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal()),
        ),
        body: Column(
          children: [
            Text(
              "Hello every body.",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 30,
                fontFamily: AutofillHints.addressCity,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image(
              image: AssetImage('assets/image/cat1.jpg'),
            ),
            Text("tuoi con ngan con"),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.blue,
                ]),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Colors.blueGrey,
                        size: 30,
                      ),
                      onPressed: () {
                        print("hello cacs ban");
                        var snackBar = new SnackBar(content: Text("Trang chủ"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }),
                  IconButton(
                    icon: Icon(
                      Icons.video_call,
                      size: 30,
                      color: Color.fromARGB(122, 255, 9, 250),
                    ),
                    onPressed: () {
                      var snackbar1 =
                          new SnackBar(content: Text("may tuoi gi"));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar1);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      size: 30,
                      color: Color.fromARGB(255, 255, 100, 0),
                    ),
                    onPressed: () {
                      var snackbar2 = new SnackBar(
                        content: Text("con chim nonr"),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar2);
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //từ trên xuống
          crossAxisAlignment: CrossAxisAlignment.center, //từ trái sang
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "Setting",
                icon: Icon(
                  Icons.settings,
                )),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.amber,
          shape: CircleBorder(),
          onPressed: () => {},
          child: Icon(Icons.add),
        ),
        drawer: ListView(
          scrollDirection: Axis.vertical,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Text("Hello"),
            ),
            ListTile(
              onTap: () => {Navigator.pop(context)},
              title: Text("Hello"),
            )
          ],
        ));
  }
}
