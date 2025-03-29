// import 'package:flutter/material.dart';

//||first page

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             body: Container(
//                 decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                       Color.fromARGB(255, 61, 9, 219),
//                       Color.fromARGB(182, 61, 9, 210)
//                     ])),
//                 child: Center(
//                     child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                         height: 250,
//                         child: Image.asset(
//                           '../assets/image.png',
//                         )),
//                     Container(
//                         child: const Text(
//                       "\t\t\t\tEnjoy \nYour Food",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                       ),
//                     )),
//                     Container(
//                         height: 50,
//                         width: 200,
//                         // color: Colors.white,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(30)),
//                         child: const Center(
//                             child: Text(
//                           "Get Started",
//                           style: TextStyle(
//                               color: Color.fromARGB(164, 52, 0, 239),
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold),
//                         )))
//                   ],
//                 )))));
//   }
// }

// ||second page
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 61, 9, 219),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 250.0,
                    width: 250.0,
                    child: Center(child: Image.asset('../assets/burger.png'))),
                Expanded(
                  child: Container(
                      // height: 332,
                      // width: 500,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50))),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 61, 9, 219),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "4.8",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                      ),
                                      const Text("\$20",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 230, 0),
                                            fontWeight: FontWeight.bold,
                                          ))
                                    ],
                                  ),
                                  const Text(
                                    "Beef Burger",
                                    style: TextStyle(
                                      color: Color.fromARGB(166, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                      "Big juicy buger with Cheese,Lettuce,Onions,\nTomato and special sauce!")
                                ]),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Add Ons:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                              72.0 / 2.0)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          '../assets/tomato.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                              72.0 / 2.0)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          '../assets/cheese.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 72,
                                      width: 72,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                              72.0 / 2.0)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          '../assets/pepsi.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                    child: Container(
                                        margin: const EdgeInsets.all(8.0),
                                        height: 40,
                                        width: 400,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 61, 9, 219),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: const Center(
                                          child: Text(
                                            'Add To Cart',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )))
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ))));
  }
}
