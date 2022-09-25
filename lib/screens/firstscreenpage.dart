import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key}) : super(key: key);

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) {
          return (i == 4)
              ? Container()
              : Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        appsList[i].sname,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                );
        },
        separatorBuilder: (context, i) {
          return Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...Global.Icons.map(
                    (e) => InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("install_page", arguments: e);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 120),
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("${e['image']}")),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${e['name']}",
                            style: const TextStyle(fontSize: 11),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${e['rating']}",
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width: 50),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: Global.Icons.length);
  }
}
