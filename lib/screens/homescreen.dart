import 'package:flutter/material.dart';
import 'package:watch/component/bandTile.dart';
import 'package:watch/component/watchTile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _controller = ScrollController();
  void scrollToItem(int index, double num) {
    double scrollDistance = index * num;    // Adjust as needed
    _controller.animateTo(
      scrollDistance,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;
    List<String> watchImageUrls = [
      "assets/images/watch1.png",
      "assets/images/watch2.png",
      "assets/images/watch3.png",
      "assets/images/watch4.png"
    ];
    List<String> bandImageUrls = [
      "assets/images/band1.png",
      "assets/images/band2.png",
      "assets/images/band3.png",
      "assets/images/band4.png",
      "assets/images/band5.png",
      "assets/images/band6.png",
      "assets/images/band7.png"
    ];
    return Scaffold(
      
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight/8+10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.black87),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 10),
                              child: Text(
                                "51m 49s",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontFamily: "PPNeueMontreal"),
                              ),
                            ),
                          ),
                          const SizedBox(width: 28,),
                const Text("Apple Watch Ultra",
          style: TextStyle(
                color: Colors.black87,
                fontFamily: "PPNeueMontreal",
                fontSize: 22
          ),),
          const SizedBox(width: 60,),
          
           CircleAvatar(
                            radius: 18,
                            child: const Icon(
                              Icons.favorite_outline,
                              size: 22,
                              color:  Colors.black87,
                            ),
                            backgroundColor:Colors.grey.shade200,
                          )
              ],
            )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child:  Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const    SizedBox(
                        height: 16,
                      ),
                      Text(
                        "From \₹53,000",
                        style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1,
                            wordSpacing: 1,
                            color: Colors.grey.shade100,
                            fontFamily: "PPNeueMontreal"),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Your stylish companion for seamless connectivity, fitness tracking, and personalized notifications on the go, all within a sleek and powerful wearable design.",
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontFamily: "PPNeueMontreal",
                            wordSpacing: 2),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                color: Colors.grey.shade200),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black87,
                                    fontFamily: "PPNeueMontreal"),
                              ),
                            ),
                          ),
                          SizedBox(width: 100,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                                color: Colors.blue.shade700),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "PPNeueMontreal"),
                              ),
                            ),
                          ),
                          
                          
                        ],
                      )
                    ],
                  ),
                ),
                height: screenHeight - 150,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22)),
                    color: Color(0xFF292929)),
              ),
            ],
          ),
          Positioned(
              bottom: screenHeight - 130,
              left: screenWidth / 2 - 60,
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        scrollToItem(1, 1);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFFC0C0C0),
                        radius: 10,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        scrollToItem(2, 190);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFF3B3B3B),
                        radius: 10,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        scrollToItem(3, 256);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFF000000),
                        radius: 10,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        scrollToItem(4, 350);
                      },
                      child: const CircleAvatar(
                        backgroundColor: Color(0xFF001F3F),
                        radius: 10,
                      )),
                ],
              )),
          Positioned(
            top: screenHeight / 3.01,
            left: screenWidth / 7,
            child: SizedBox(
              height: screenHeight * 1,
              width: screenWidth * 0.9,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bandImageUrls.length,
                itemBuilder: (context, index) {
                  return BandTile(
                    bandImageUrl: bandImageUrls[index],
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 3 + 55,
            left: screenWidth / 7 - 10,
            child: SizedBox(
              height: screenHeight * 0.7,
              width: screenWidth * 0.9,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: watchImageUrls.length,
                itemBuilder: (context, index) {
                  return WatchTile(
                    imageUrl: watchImageUrls[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
