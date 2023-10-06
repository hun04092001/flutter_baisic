import 'package:appflutter_one/data/movie.dart';
import 'package:appflutter_one/widgets/custom_Card.dart';
import 'package:flutter/material.dart';

class MyCinema extends StatefulWidget {
  const MyCinema({super.key});

  @override
  State<MyCinema> createState() => _MycinemaState();
}

class _MycinemaState extends State<MyCinema> {
  List<MovieModel> foryouItemsList = List.of(forYouImages);
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Cinema xin chào !",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          "https://lh3.googleusercontent.com/a/ACg8ocLMB-rqlKSFR8nT0fzEDBD5UIdtTD-m99W4qL-rGFbC7A=s288-c-no"),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              right: 2,
                              top: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white24,
                                ),
                                height: 10,
                                width: 10,
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 198, 195, 185),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: const Color.fromARGB(255, 180, 140, 21),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text("Tìm kiếm",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 180, 140, 21)))
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Text(
                    "Phim hay ",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                foryoucardsLayout(forYouImages),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Phổ biến",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300)),
                          Text("Xem tất cả",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget foryoucardsLayout(List<MovieModel> movieList) {
    return SizedBox(
      height: MediaQuery.of(context as BuildContext).size.height * 0.50,
      child: PageView.builder(
          controller: pageController,
          itemCount: movieList.length,
          itemBuilder: (context, index) {
            return MyCustomCard(
                imageAsset: movieList[index].imageAsset.toString());
          },
          onPageChanged: (int page) {
            setState(() {
              currentPage = page;
            });
          }),
    );
  }
}
