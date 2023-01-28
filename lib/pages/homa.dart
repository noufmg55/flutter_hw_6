import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 75, 246),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 824,
                width: 420,
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9FD),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Image(image: AssetImage('assets/images/logo.png')),
                        Icon(
                          Icons.menu,
                          size: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const Text(
                      'Welcome Back',
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Valeria ',
                          style: TextStyle(fontSize: 20, color: Color(0xFF245EE4), fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.handshake,
                          color: Color.fromARGB(255, 255, 203, 59),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                        height: 300,
                        width: 390,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text('Total Team Members '),
                                  Icon(Icons.info_outline, size: 15, color: Color.fromARGB(255, 152, 149, 149)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(height: 10, thickness: 1, color: Color.fromARGB(255, 226, 223, 223)),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '86 ',
                                    style: TextStyle(
                                        fontSize: 24, color: Color.fromARGB(255, 0, 3, 5), fontWeight: FontWeight.bold),
                                  ),
                                  Center(
                                    child: FlutterImageStack(
                                      imageSource: ImageSource.Asset,

                                      //backgroundColor: Colors.grey,
                                      //itemBorderColor: Colors.red,
                                      imageList: const [
                                        'assets/images/pic1.jpeg',
                                        'assets/images/pic1.jpeg',
                                        'assets/images/pic1.jpeg',
                                      ],

                                      showTotalCount: true,
                                      totalCount: 3,
                                      itemRadius: 50, // Radius of each images
                                      itemCount: 3, // Maximum number of images to be shown in stack
                                      itemBorderWidth: 5, // Border width around the images
                                    ),
                                  ),
                                  //

                                  ///

                                  //
                                ],
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: 50,
                                width: 400,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Add team members',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.person_add_alt_outlined,
                                      color: Colors.white,
                                      size: 19,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                        height: 170,
                        width: 390,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text('Team Availability '),
                                  Icon(Icons.info_outline, size: 15, color: Color.fromARGB(255, 152, 149, 149))
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Divider(height: 10, thickness: 1, color: Color.fromARGB(255, 226, 223, 223)),
                            ],
                          ),
                        ))
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
