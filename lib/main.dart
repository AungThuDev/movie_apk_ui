import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1c262f),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B2C3B),
        title: const Text("Movie App"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B2C3B),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favourite",),
        ]),

      body: Padding(
        padding: EdgeInsets.only(
          top: 12.0,
        ),
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "Action",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "Advanture",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "Comedie",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "Drama",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blueGrey,
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Top Trends",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 26.0),
                          ),
                        ),
                        
                      ],
                    ),
              SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 230.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child:MovieCard("TheDirt", "8.5/10", "images/1.jpeg"),),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("Yesterday", "8./10", "images/2.jpeg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("JamesBond", "9/10", "images/3.jpeg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("Mayhem", "10/10", "images/4.jpeg"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "Top Trends",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                fontSize: 26.0),
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox(
                          height: 12.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 230.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child:MovieCard("Kenshin", "8.5/10", "images/5.jpeg"),),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("Saw", "8./10", "images/6.jpeg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("WrongTurn", "9/10", "images/7.jpeg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                child: MovieCard("W.Woman", "10/10", "images/8.jpeg"),
                              ),
                            ],
                          ),
                        ),
        
            ],
          ),
        ),
      ),
      
    );
}

  Widget MovieCard(String title, String rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 26.0)),
          SizedBox(height: 5.0),
          Text(
            rate,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
