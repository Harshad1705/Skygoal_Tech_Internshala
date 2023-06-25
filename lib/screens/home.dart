import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<List<String>> colleges = [
    [
      "Top Colleges",
      "Search through thousands of\naccredited colleges and universities\nonline to find the right one for you.\nApply in 3 min, and connect with your\nfuture.",
      "+126 ",
      "Colleges",
    ],
    [
      "Top Schools",
      "Searching for the best school for you\njust got easier! With our Advanced\nSchool Search, you can easily filter out\nthe schools that are fit for you.",
      "+106 ",
      "Schools",
    ],
    [
      "Exams",
      "Find an end to end information about\nthe exams that are happening in India",
      "+16 ",
      "Exams",
    ],
  ];
  List<String> strams = [
    "Bachelor of Technology",
    "Bachelor of Architecture",
    "Pharmacy",
    "Law",
    "Management",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find your own way",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              Positioned(
                                right: 2,
                                top: 2,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffFD0000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Search in 600 colleges around!",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: searchContainer(
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xffD6D6D6),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search for colleges, schools.....",
                                overflow: TextOverflow.visible,
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffD6D6D6),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: searchContainer(
                          child: Icon(
                            Icons.mic,
                            color: Color(0xff0E3C6E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemCount: colleges.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return clgConrtainer(context: context, index: index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget clgConrtainer({required BuildContext context, required int index}) {
    return GestureDetector(
      onTap: () {
        //TODO
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              );
            });
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: MediaQuery.of(context).size.height * 0.18,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/clg${index + 1}.png"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  colleges[index][0],
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  colleges[index][1],
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    wordSpacing: 2,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 30,
            child: Row(
              children: [
                Text(
                  colleges[index][2],
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  colleges[index][3],
                  style: GoogleFonts.lato(
                    shadows: const [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Colors.grey, // shadow color
                        offset:
                            Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff848484),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container searchContainer({required Widget child}) {
    return Container(
      height: 53,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
