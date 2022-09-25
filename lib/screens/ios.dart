import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';

class IosPage extends StatefulWidget {
  const IosPage({Key? key}) : super(key: key);

  @override
  State<IosPage> createState() => _IosPageState();
}

class _IosPageState extends State<IosPage> {
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: Container(
        child: CupertinoTabScaffold(
          backgroundColor: CupertinoColors.white,
          tabBar: CupertinoTabBar(
            height: 50,
            backgroundColor: CupertinoColors.white,
            inactiveColor: CupertinoColors.inactiveGray,
            activeColor: CupertinoColors.activeBlue,
            onTap: (val) {
              setState(() {
                bottomIndex = val;
                if (bottomIndex == 1) {
                  Navigator.of(context).pushNamed("game_page");
                }
                if (bottomIndex == 2) {
                  Navigator.of(context).pushNamed("app_page");
                }
              });
            },
            currentIndex: bottomIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.today),
                label: "Today",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rocket_fill),
                label: "Games",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_app_fill),
                label: "Apps",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cloud_download_fill),
                label: "Updates",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: "Search",
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (context) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "WEDNESDAY, SEPTEMBER 25",
                              style: TextStyle(
                                  color: CupertinoColors.inactiveGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  "Today",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundImage: NetworkImage(
                                      "https://w0.peakpx.com/wallpaper/999/880/HD-wallpaper-eren-yeager-attack-on-titan-shingeki-no-kyojin-manga-mikasa-anime-levi.jpg"),
                                ),
                              ],
                            ),
                            Column(
                              children: todayList
                                  .map(
                                    (e) => Container(
                                      margin: EdgeInsets.only(top: 30),
                                      height: 450,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: CupertinoColors.black,
                                                blurRadius: 2,
                                                spreadRadius: 2,
                                                offset: Offset(0.1, 3)),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: NetworkImage(e.img),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
