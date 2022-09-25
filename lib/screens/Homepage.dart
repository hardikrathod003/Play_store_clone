import 'package:flutter/material.dart';
import 'firstscreenpage.dart';
import 'secondscreen.dart';
import '../Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle myStyle = const TextStyle(color: Colors.black, fontSize: 15);
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  int bottomNavi = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _key,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://w0.peakpx.com/wallpaper/999/880/HD-wallpaper-eren-yeager-attack-on-titan-shingeki-no-kyojin-manga-mikasa-anime-levi.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Hardik  Rathod"),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
              ),
              Row(
                children: [
                  const Text("Change OS"),
                  const Spacer(),
                  Switch(
                      value: Global.isIOS,
                      onChanged: (val) {
                        Global.isIOS = val;
                        setState(() {});
                      }),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Log Out"))
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                  spreadRadius: 0,
                  offset: Offset.fromDirection(0.1, 0.1),
                ),
              ],
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    )),
                const InkWell(
                    child: Text(
                  "Search Games ",
                  style: TextStyle(color: Colors.grey),
                )),
                const InkWell(
                    child: Icon(
                  Icons.keyboard_voice_outlined,
                  color: Colors.black,
                )),
              ],
            ),
          ),
          bottom: TabBar(
            onTap: (val) {},
            tabs: [
              Text("For you", style: myStyle),
              Text(
                "Top Charts",
                style: myStyle,
              ),
              Text(
                "Categories",
                style: myStyle,
              ),
              Text(
                "EditorCheck",
                style: myStyle,
              ),
              Text(
                "NewText",
                style: myStyle,
              ),
            ],
            indicatorColor: const Color(0xff01875f),
            isScrollable: true,
          ),
        ),
        body: const TabBarView(
          children: [
            FirstScreenPage(),
            SecondScreen(),
            Center(child: Text("Coming Soon")),
            Center(child: Text("Coming Soon")),
            Center(child: Text("Coming Soon")),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavi,
          onTap: (val) {
            setState(() {
              bottomNavi = val;
            });
          },
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Game",
              icon: Icon(Icons.videogame_asset),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Apps",
              icon: Icon(Icons.apps),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Movies & TV",
              icon: Icon(Icons.local_movies_outlined),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Books",
              icon: Icon(
                Icons.book_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
