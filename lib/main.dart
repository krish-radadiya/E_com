import 'package:e_com_app/utils/global.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        "Select category...",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 20,
                        icon: const Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  children: global.allProducts.map((e) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: 370,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${e['categoryName']}",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...e['categoryProducts'].map((e) {
                                  return Container(
                                    height: 290,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    margin:
                                        EdgeInsets.only(right: 25, bottom: 25),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              ),
                                            ),
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              height: 30,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(15),
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${e['discount']} %",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            padding: EdgeInsets.all(10),
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${e['name']}",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  "${e['price']}",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "${e['ratting']}",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
