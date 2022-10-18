import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final int result;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        items: const [
          Icon(
            Icons.calculate,
          ),
          Icon(Icons.currency_exchange),
          Icon(Icons.person),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 3,
            // ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: (() => {}),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2)),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              '7',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() => {}),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2)),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              '8',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() => {}),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2)),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              '9',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (() => {}),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey,
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(1, 2)),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'X',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '6',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '/',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffff9702),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '=',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'C',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() => {}),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(1, 2)),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
