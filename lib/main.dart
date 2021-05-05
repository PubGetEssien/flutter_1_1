import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPort(), debugShowCheckedModeBanner: false);
  }
}

class MyPort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text('Emmanuel Essien',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        'FLUTTER DEVELOPER',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 19,
                            letterSpacing: 2.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                              'I\'m a Flutter Developer interning at Zuri, \n I make motion desgins and enjoy entertaining my self with youtube and spotify',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[850],
                                fontSize: 16,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                title: Text('+234 (0) 7089905955',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                title: Text('emma.essien.et@gmail.com',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              // left: screenWidth * 0.30,
              bottom: screenHeight - 200,
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.green, Colors.blue])),
                width: screenWidth,
                height: 180,
                // color: Colors.blue[50],
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      margin: const EdgeInsets.all(8),
                      child: CircleAvatar(
                        radius: 60,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Avater.jpg',
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomCenter,
                            width: 120,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
