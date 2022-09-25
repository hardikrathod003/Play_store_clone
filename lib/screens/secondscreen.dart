import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Global.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool installSwitchVal = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Show installed apps",
                  style: TextStyle(color: Colors.grey),
                ),
                Switch(
                    activeColor: const Color(0xff01875f),
                    value: installSwitchVal,
                    onChanged: (val) {
                      installSwitchVal = val;
                      setState(() {});
                    }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: Global.Icons.map(
                (e) => SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Text(
                        ("${Global.Icons.indexOf(e) + 1}"),
                        style: const TextStyle(color: Colors.grey),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${e['image']}"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      // SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text("${e['name']}"),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "${e['rating']}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                              const Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
