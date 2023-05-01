import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color topColor = Colors.blueAccent;
  Color bottonColor = Colors.black;

  //list of colors
  var colorList = [
    Colors.green,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.deepOrangeAccent,
  ];

  var index = 0;
  late Uri link;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        bottonColor = Colors.deepOrangeAccent;
      });
    });

    return Scaffold(
      body: Stack(children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          onEnd: () {
            setState(() {
              index++;
              bottonColor = colorList[index % colorList.length];
              topColor = colorList[(index + 1) % colorList.length];
            });
          },
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                topColor,
                bottonColor,
              ])),
          child: SafeArea(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  "assets/logo.png",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Suraj Mandal",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.amberAccent,
                            blurRadius: 3,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(2, 2))
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      "Hey there 🖐️,It's me Suraj Mandal from Nepal. Currently I'm undergraduate at SVEC .",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 3,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(2, 2))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "SKILLS 💻",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        "Dart  ✔️",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Flutter 📲",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Firebase 🔥 ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        "Cross Platform App",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://github.com/surajmandal99");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset(
                        "assets/github.png",
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse(
                            "https://www.linkedin.com/in/suraj-mandal-712388227/");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset(
                        "assets/linkedin.png",
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse(
                            "https://www.facebook.com/brtkosojo.kto/");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset(
                        "assets/facebook.png",
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse("https://twitter.com/SurajMan99");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset(
                        "assets/twitter.png",
                      )),
                  IconButton(
                      onPressed: () async {
                        link =
                            Uri.parse("https://www.instagram.com/surajman99/");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset(
                        "assets/instagram.png",
                      )),
                  IconButton(
                      onPressed: () async {
                        link = Uri.parse(
                            "https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox");
                        if (await launchUrl(link)) {
                          launchUrl(link);
                        }
                      },
                      icon: Image.asset("assets/mail.png")),
                ],
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
