import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';
import 'package:iaeste/model/home_Page_Text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SelectionArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                toolbarHeight: 80,
                backgroundColor: Colors.black,
                elevation: 0,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 8.0,
                      ),
                      child: SizedBox(
                        height: 60,
                        child: Image.asset(
                          "assets/iconlogo.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Text("IAESTE CI SMU",
                        style: GoogleFonts.montserrat(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 22)),
                  ],
                ),
                actions: const [
                  NavBarButton(
                    name: "Offer Portal",
                  ),
                  NavBarButton(
                    name: "Newsletter",
                  ),
                  NavBarButton(
                    name: "Team",
                  ),
                  NavBarButton(
                    name: "Testimonials",
                  ),
                  NavBarButton(
                    name: "Contact Us",
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ];
          },
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.85,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/bgImg.jpg"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.25,
                      ),
                      Center(
                        child: SizedBox(
                            width: 700,
                            child: Image.asset(
                                "assets/IAESTE Full Name Logo White-01.png")),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    runSpacing: 64,
                    alignment: WrapAlignment.spaceEvenly,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              "WORK.",
                              style: GoogleFonts.montserrat(
                                color: Color.fromARGB(255, 12, 62, 87),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              work,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              "EXPERIENCE.",
                              style: GoogleFonts.montserrat(
                                color: const Color.fromARGB(255, 12, 62, 87),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              experience,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              "DISCOVER.",
                              style: GoogleFonts.montserrat(
                                color: const Color.fromARGB(255, 12, 62, 87),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              discover,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                  child: Text(
                    "Who Are We ?",
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(255, 12, 62, 87),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: Text(
                    historyOfIaeste,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05),
                  child: Text(
                    "One of it's kind",
                    style: GoogleFonts.montserrat(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: Text(
                    oneOfItsKind,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.05,
                    horizontal: size.width * 0.02,
                  ),
                  decoration:
                      const BoxDecoration(color: Color.fromRGBO(33, 37, 41, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                  onPressed: () {
                                    html.window.open(
                                        "https://www.facebook.com/110459860403650/",
                                        "_blank");
                                  },
                                  child: Image.asset("assets/facebook.png")),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                  onPressed: () {
                                    html.window.open(
                                        "https://www.twitter.com/iaestesmu",
                                        "_blank");
                                  },
                                  child: Image.asset("assets/twitter.png")),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                  onPressed: () {
                                    html.window.open(
                                        "https://www.instagram.com/iaestesmu",
                                        "_blank");
                                  },
                                  child: Image.asset("assets/instagram.png")),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: TextButton(
                                  onPressed: () {
                                    html.window.open(
                                        "https://www.linkedin.com/company/iaeste-india-ci-smu/",
                                        "_blank");
                                  },
                                  child: Image.asset("assets/linkedin.png")),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Wrap(
                        runSpacing: 64,
                        alignment: WrapAlignment.spaceEvenly,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ABOUT IAESTE",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const FooterButtons(
                                title: "History of IAESTE",
                                navigate: "https://iaeste.org/history",
                              ),
                              const FooterButtons(
                                title: "Organisation Structure",
                                navigate:
                                    "https://iaeste.org/organisation-structure",
                              ),
                              const FooterButtons(
                                title: "Annual Conferences",
                                navigate:
                                    "https://iaeste.org/annual-conferences",
                              ),
                              const FooterButtons(
                                title: "Non Member Countries",
                                navigate:
                                    "https://iaeste.org/student-nonmembers",
                              ),
                              const FooterButtons(
                                title: "Contact Us",
                                navigate: "/",
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "STUDENTS",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const FooterButtons(
                                  title: "Explore Internships", navigate: ""),
                              const FooterButtons(
                                  title: "Testimonials", navigate: ""),
                              const FooterButtons(title: "FAQs", navigate: ""),
                              const FooterButtons(
                                  title: "Feedbacks and Complaints",
                                  navigate: ""),
                              const FooterButtons(
                                  title: "Explore Sikkim",
                                  navigate:
                                      "https://www.sikkimtourism.gov.in/Public/index"),
                              const FooterButtons(
                                  title: "Website Team", navigate: ""),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ALUMNI",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const FooterButtons(title: "FAQs", navigate: ""),
                              const FooterButtons(
                                  title: "Contact Us", navigate: "/"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterButtons extends StatelessWidget {
  const FooterButtons({Key? key, required this.navigate, required this.title})
      : super(key: key);

  final String navigate;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        html.window.open(navigate, "_blank");
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          color: Colors.white70,
          fontWeight: FontWeight.w400,
          fontSize: 18,
        ),
      ),
    );
  }
}

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.montserrat(
            color: Colors.white70,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
