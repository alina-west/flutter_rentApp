import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE1F5FE),
        body: Center(
          child: Stack(
            children: [
              Container(
                color: Color(0xFFE1F5FE),
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: 410,
                  height: 284,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                right: 0,
                child: Container(
                  width: 410,
                  height: 565,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Посуточная аренда',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                      ),
                    ),
                    Text(
                      'недвижимости',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: 370,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0xFFE1F5FE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 13),
                          Row(
                            children: [
                              Icon(Icons.public, size: 30, color: Colors.blue.shade800),
                              SizedBox(width: 10),
                              Text(
                                'Где арендовать',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Divider(color: Colors.grey),
                          Row(
                            children: [
                              Icon(Icons.timer_outlined, size: 30, color: Colors.blue.shade800),
                              SizedBox(width: 17, height: 50,),
                              Text(
                                'Когда',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: 370,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5EAFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 13),
                          Icon(Icons.home_outlined, size: 55, color: Colors.blue.shade800),
                          SizedBox(height: 7),
                          Text(
                            'Мои заселения',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue.shade800,
                            ),
                          ),
                          SizedBox(height: 0),
                          Text(
                            'Предстоящие и предыдущие',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.key_sharp,),
              label: 'Снять',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Сдать',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
