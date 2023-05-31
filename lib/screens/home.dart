import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:oonzoo/constants/style.dart';
import 'package:oonzoo/screens/widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List Category = [
  "Girls fashion 0-6 months",
  "Boys fashion 0-6 months",
  "Girls fashion 6-24 months",
  "Boys fashion 6-24 months",
  "Girls fashion 2-4 YRS",
  "Boys fashion 2-4 YRS",
];
final List categoryimages = [
  "assets/girl0.jpg",
  "assets/boy0.jpg",
  "assets/girl6 2.jpg",
  "assets/boy6.jpg",
  "assets/girl24.jpg",
  "assets/boy24.jpg"
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.15,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/kids.jpeg"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    GlobalVariabels.horizontal10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Shop for",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "All",
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GlobalVariabels.vertical10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.add),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "All child",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const category(
                    title: 'All',
                  ),
                  const category(
                    title: 'Boy',
                  ),
                  const category(
                    title: 'Girl',
                  ),
                  const category(
                    title: 'Expecting',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.location_on_outlined),
                          Text("Delivery to - 678583")
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/banner.jpeg"))),
                  ),
                ),
                CarouselSlider(
                  items: const [
                    slider(
                      image:
                          'https://cdn.fcglcdn.com/brainbees/banners/mktng_hp_svs_20may231685361526140.jpg',
                    ),
                    slider(
                        image:
                            "https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p04_mega_deal_vacay_desktop1684846858974.jpg"),
                    slider(
                        image:
                            "https://cdn.fcglcdn.com/brainbees/banners/hp_mktg_p01_fab_fas_vacay_desktop1684221180352.jpg"),
                    slider(
                        image:
                            "https://cdn.fcglcdn.com/brainbees/banners/pampers_dia_dp_hp_mkt_po3_f351682684593139.jpg"),
                  ],
                  options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset("assets/freeshipping.gif"),
                      GlobalVariabels.horizontal10,
                      Image.asset("assets/flat60.jpeg"),
                    ],
                  ),
                ),
                GlobalVariabels.vertical15,
                Text("Shop By Category"),
                GlobalVariabels.vertical10,
                GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: Category.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          (orientation == Orientation.portrait) ? 2 : 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Stack(
                        children: [
                          ClipPath(
                            clipper: MultiplePointsClipper(Sides.bottom,
                                numberOfPoints: 7, heightOfPoint: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage(categoryimages[index]))),
                              height: 150,
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.center,
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              left: 3,
                              child: Text(
                                Category[index],
                                maxLines: 1,
                              ))
                        ],
                      ),
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}

class category extends StatelessWidget {
  final String title;
  const category({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/kids.jpeg"), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(title, style: TextStyle(fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
