import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> countries = [
    'Turkey',
    'Germany',
    'United Kingdom',
    'France',
    'Italy',
    'Spain'
  ];
  int buttons = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi Arif,",
                      style: GoogleFonts.chivo(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.search,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(
                              Icons.notifications_none,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Find your",
                                      style: GoogleFonts.chivo(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "Next Destination !",
                                      style: GoogleFonts.chivo(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 20,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/images/MainPageStack3.png",
                          ),
                          backgroundColor: Colors.blue[800],
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Over 40 Countries !",
                  style:
                      GoogleFonts.chivo(fontSize: 18, color: Colors.blue[800]),
                ),
              ),
              Container(
                height: 194,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Yatay kaydırma
                  itemCount: countries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue[800],
                              ),
                              width: 145,
                              height: 170,
                            ),
                            Positioned(
                              bottom: 40,
                              left: 0,
                              right: 0,
                              child: Text(
                                countries[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
                              top: 10,
                              child: Icon(
                                Icons.bookmark_outline,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "View all",
                      style: GoogleFonts.chivo(color: Colors.black38),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Nearby you !",
                      style: GoogleFonts.chivo(color: Colors.blue[800]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                child: Container(
                  child: Image.asset("assets/images/YourLocation.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            buttons = 1;
                          });
                        },
                        child: Text(
                          "Hotels",
                          style: GoogleFonts.chivo(
                              color: buttons == 1
                                  ? Colors.blue[800]
                                  : Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            buttons = 2;
                          });
                        },
                        child: Text(
                          "Museums",
                          style: GoogleFonts.chivo(
                              color: buttons == 2
                                  ? Colors.blue[800]
                                  : Colors.black),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            buttons = 3;
                          });
                        },
                        child: Text(
                          "Restaurants",
                          style: GoogleFonts.chivo(
                              color: buttons == 3
                                  ? Colors.blue[800]
                                  : Colors.black),
                        )),
                  ],
                ),
              ),
              Container(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.grey[300],
                          ),
                          SizedBox(height: 8),
                          Text(buttons == 1
                              ? "Hotel${index + 1}"
                              : buttons == 2
                                  ? "Museum${index + 1}"
                                  : "Restauran${index + 1}"),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
