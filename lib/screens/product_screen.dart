import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oonzoo/constants/style.dart';
import 'package:oonzoo/screens/home.dart';
import 'package:oonzoo/screens/widgets/slider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        title: Image.asset("assets/fc_logo.png"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Colors.grey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.cart,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: height * 0.5,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),
                items: const [
                  slider(
                      image:
                          "https://cdn.fcglcdn.com/brainbees/images/products/438x531/12754758a.jpg"),
                  slider(
                      image:
                          "https://cdn.fcglcdn.com/brainbees/images/products/438x531/12754758b.jpg"),
                  slider(
                      image:
                          "https://cdn.fcglcdn.com/brainbees/images/products/zoom/12754758l.jpg")
                ],
              ),
              const Text(
                "Babyhug Cotton Half Sleeves T-Shirt Striped & Monster Print - Grey Blue & Green",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GlobalVariabels.vertical15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("₹ 1115.73",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      GlobalVariabels.vertical8,
                      Text("MRP: 1449.0023% OFF",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 49, 121, 52)))
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart))
                ],
              ),
              GlobalVariabels.vertical8,
              const Text(
                  "MRP incl. all taxes, Add'l charges may apply on discounted price"),
              GlobalVariabels.divider5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 35,
                        child: Image.network(
                            "https://cdn.fcglcdn.com/brainbees/images/m/clsec-logo-xl.jpg"),
                      ),
                      GlobalVariabels.horizontal10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text.rich(TextSpan(children: [
                            TextSpan(text: "Save"),
                            TextSpan(
                                text: "₹ 28.98",
                                style: TextStyle(color: Colors.green)),
                            TextSpan(text: " with club"),
                          ])),
                          Text.rich(TextSpan(children: [
                            TextSpan(text: "Club Price "),
                            TextSpan(
                                text: "1086.75",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Join Now",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_right,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                height: 25,
                width: 260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 235, 220, 173),
                ),
                child: Row(
                  children: [
                    Image.network(
                        "https://img.icons8.com/?size=512&id=OFHwDWASQWmX&format=png"),
                    Text("Buy & Earn Club Cash upto 24")
                  ],
                ),
              ),
              GlobalVariabels.divider5,
              SizedBox(
                height: height * 0.12,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    OffersCard(
                      width: width,
                      height: height,
                      backgroundColor: Color.fromARGB(255, 249, 230, 170),
                      code: "Use code: SMRF8",
                    ),
                    OffersCard(
                      width: width,
                      height: height,
                      backgroundColor: Color.fromARGB(255, 177, 177, 214),
                      code: "Use code: SVSFF8",
                    ),
                    OffersCard(
                      width: width,
                      height: height,
                      backgroundColor: Color.fromARGB(255, 249, 230, 170),
                      code: "Use code: NJHRF8",
                    ),
                  ],
                ),
              ),
              GlobalVariabels.vertical20,
              const Text(
                "SIZE",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GlobalVariabels.vertical20,
              SizedBox(
                height: height * 0.04,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Size(
                      width: width,
                      size: '3-6 M',
                    ),
                    GlobalVariabels.horizontal20,
                    Size(
                      width: width,
                      size: '6-9 M',
                    ),
                    GlobalVariabels.horizontal20,
                    Size(
                      width: width,
                      size: '9-12 M',
                    ),
                    GlobalVariabels.horizontal20,
                    Size(
                      width: width,
                      size: '12-18 M',
                    ),
                    GlobalVariabels.horizontal20,
                    Size(
                      width: width,
                      size: '18-24 M',
                    )
                  ],
                ),
              ),
              GlobalVariabels.vertical20,
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: width * 0.4,
                color: Color.fromARGB(255, 84, 83, 80),
                child: Center(
                  child: Container(
                    height: 35,
                    width: width * 0.25,
                    color: Colors.grey.shade300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("9-12M"),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: width * 0.6,
                color: Colors.green,
                child: TextButton(
                  onPressed: () {},
                  child: const Center(
                      child: Text(
                    "Add to cart",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Size extends StatelessWidget {
  final String size;
  const Size({
    super.key,
    required this.width,
    required this.size,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.16,
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          border: Border.all(color: Colors.black.withOpacity(0.5))),
      child: Center(child: Text(size)),
    );
  }
}

class OffersCard extends StatelessWidget {
  final Color backgroundColor;
  final String code;

  const OffersCard({
    super.key,
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.code,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                  height: height * 0.10,
                  width: 25,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Color.fromARGB(255, 249, 210, 95),
                  ),
                  child: const Center(
                      child:
                          RotatedBox(quarterTurns: 3, child: Text("Offers")))),
            ],
          ),
          GlobalVariabels.horizontal10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: width * 0.4,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Color.fromARGB(255, 26, 47, 65)),
                  child: Center(
                      child: Text(
                    code,
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                GlobalVariabels.vertical10,
                const Text(
                  "Flat 40% Off for All for club Users - Superhit Fashion Brands",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Divider(
                  thickness: 1,
                ),
                const Text(
                  "Flat 42% Off for All Users - Superhit Fashion Brands",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "T&C Apply",
                  style: TextStyle(fontSize: 8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
