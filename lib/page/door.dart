import 'package:flutter/material.dart';
import 'widgets/status_card.dart';
import 'status.dart';

class DoorPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M-Car',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
      ),
      home: DoorScreen(),
    );
  }
}

class DoorScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context)
        .size;
    DateTime now = DateTime.now();
    String convertedDateTime = "${now.year.toString()}-${now.month.toString().padLeft(2,'0')}-${now.day.toString().padLeft(2,'0')} ${now.hour.toString().padLeft(2,'0')}:${now.minute.toString().padLeft(2,'0')}";
    //Give the total height and width of the device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFB8D0FF),Color(0xFFAAECC4)],
              ),
              color: Color(0xFFEECDA8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/bg.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context)=>StatusPage()
                                )
                            );
                          },
                        )
                    ),
                  ),
                  Text(
                    "\nDoor Status",
                    style:TextStyle(
                      fontSize: 40,
                      color: Color(0xFF3D0007),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                      "\n 📍 London",
                      style:TextStyle(
                        fontSize: 20,
                        color: Color(0xFF3B0033),
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  Text(
                      "$convertedDateTime\n",
                      style:TextStyle(
                        fontSize: 12,
                        color: Color(0xFF3B2733),
                        fontWeight: FontWeight.w500,
                      )
                  ),
                  Wrap(
                    spacing:20,
                    runSpacing: 20,
                    children: <Widget>[
                      StatusCard(
                        status: "Closed",
                        title: "Decklid",
                      ),
                      StatusCard(
                        status: "Closed",
                        title: "Rooftop",
                      ),
                      StatusCard(
                        status: "Closed",
                        title: "Front Left",
                      ),
                      StatusCard(
                        status: "Closed",
                        title: "Front Right",
                      ),
                      StatusCard(
                        status: "Closed",
                        title: "Rear Left",
                      ),
                      StatusCard(
                        status: "Closed",
                        title: "Rear Right",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}