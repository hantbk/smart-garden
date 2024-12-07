import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantapp/pages/home/homebuttons.dart';
import 'package:plantapp/pages/home/weatherdets.dart';
import 'package:plantapp/pages/macro/MacroDetails.dart';
import 'package:plantapp/pages/micro/MicroDetails.dart';
import 'package:plantapp/pages/home/weather.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Smart Planting System",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromRGBO(161, 207, 107, 1),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Stack(alignment: Alignment.bottomLeft, children: [
            Container(
              height: 150,
              width: 500,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(81)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(161, 207, 107, 1),
                        Color.fromRGBO(74, 173, 82, 1)
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Wrap(direction: Axis.vertical, children: [
                Text.rich(TextSpan(
                  text: 'Welcome \n', // First part of the text
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    height: 0.9,
                    fontWeight: FontWeight.w400,
                    fontSize: 28,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Username!', // Second part of the text
                      style: GoogleFonts.poppins(
                        height: 0.8,
                        color: Colors.white,
                        fontWeight: FontWeight.w600, // Different font weight
                        fontSize: 35, // Same font size, or adjust as needed
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      Text(
                        "Hanoi, Vietnam",
                        style: GoogleFonts.poppins(color: Colors.white),
                      )
                    ],
                  ),
                )
              ]),
            )
          ]),
          const WeatherContainer(),
          // Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.white,
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.shade300,
          //             blurRadius: 35,
          //           ),
          //         ]),
          //     child: GridView.count(
          //       crossAxisCount: 2,
          //       childAspectRatio: 2,
          //       shrinkWrap: true,
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          //       children: const [
          //         WeatherDetails(
          //             wtype: "Temperature", val: "30°C", ic: Icons.thermostat),
          //         WeatherDetails(
          //             wtype: "Humidity", val: "36%", ic: Icons.water),
          //         WeatherDetails(
          //             wtype: "Soil Mosture", val: "30%", ic: Icons.water_drop),
          //         WeatherDetails(
          //             wtype: "Light Intensity",
          //             val: "30 %",
          //             ic: Icons.lightbulb)
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MacroPage()),
                  );
                },
                child: const ButtonsHome(
                  imgpath: "lib/images/tank.jpg",
                  heading: "Water Tank",
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MicroPage()),
                  );
                },
                child: const ButtonsHome(
                  imgpath: "lib/images/iot.jpeg",
                  heading: "In Ground Sensors",
                )),
          ),
        ],
      ),
    );
  }
}