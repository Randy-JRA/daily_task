import 'package:daily_task/Components/gallerycard.dart';
import 'package:flutter/material.dart';

import '../DrawerPage/drawerPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //here i would create a list of the pictures
  List<String> urls = [
    "https://www.freepik.com/free-vector/super-heroes-couple_4265873.htm#query=super%20heroes&position=11&from_view=search&track=ais",
    "https://www.freepik.com/free-photo/superhero-kids_2861428.htm#query=super%20heroes&position=18&from_view=search&track=ais",
    "https://www.freepik.com/premium-ai-image/super-hero-woman-with-african-american-appearance-is-super-hero-wearing-eye-maskant-generative-ai_60438049.htm#query=super%20heroes&position=27&from_view=search&track=ais",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Sprallery'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Hello Your flutter Gallery',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              'Explore what you see',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20,),

            //here below is for the search field
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Colors.lightBlueAccent,
              child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: 'Search tool',
                  prefixIcon: Icon(Icons.search, color: Colors.black,size: 20,),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20,),

            //here below is a tab bar
            Flexible(
              child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      const TabBar(
                        indicatorColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.green,
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        tabs: [
                          Tab(
                            text: 'Trending',
                          ),
                          Tab(
                            text: 'Promotions',
                          ),
                          Tab(
                            text: 'Favorites',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0,),
                      Flexible(
                        child: Container(
                          child: TabBarView(
                            children: [
                              //below is our first tab view
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    //testing the card
                                    galleryCard(urls[0], "Avengers", "New York", 2),
                                    galleryCard(urls[1], "Avengers", "New York", 1),
                                    galleryCard(urls[2], "Avengers", "New York", 3),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    galleryCard(urls[1], "Avengers", "New York", 1),
                                    galleryCard(urls[2], "Avengers", "New York", 3),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    galleryCard(urls[1], "Avengers", "New York", 3),
                                    galleryCard(urls[2], "Avengers", "New York", 1),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
