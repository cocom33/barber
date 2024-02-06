import 'package:barberking/barbermen_widget.dart';
import 'package:barberking/date_widget.dart';
import 'package:barberking/service_widget.dart';
import 'package:barberking/time_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedDate = 19;

  void _selectDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  List serviceSelected = <String>[];
  void handleServiceSelected(name) {
    if (serviceSelected.contains(name)) {
      serviceSelected.remove(name);
    } else {
      serviceSelected.add(name);
    }
    setState(() {});
  }

  String selectedBarbermen = 'zaki';
  void _selectBarbermen(String barbermen) {
    setState(() {
      selectedBarbermen = barbermen;
    });
  }

  String? selectedTime = '08.30';
  void _selectTime(String time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BOOKING",
          style: TextStyle(
            fontFamily: 'FiraSans',
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                left: 15,
                right: 15,
                child: SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DateWidget(
                        date: 18,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 18,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      DateWidget(
                        date: 19,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 19,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      DateWidget(
                        date: 20,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 20,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      DateWidget(
                        date: 21,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 21,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      DateWidget(
                        date: 22,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 22,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      DateWidget(
                        date: 23,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 23,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Center(
            child: Text(
              "BARBERKING",
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 3,
                color: Colors.black.withOpacity(0.6),
                fontSize: 30.0,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(
                width: 15.0,
              ),
              ServeceWidget(
                name: 'HairCut',
                price: '15000',
                tapHandler: handleServiceSelected,
                isSelected: serviceSelected.contains('HairCut'),
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServeceWidget(
                name: 'Creambath',
                price: '30000',
                tapHandler: handleServiceSelected,
                isSelected: serviceSelected.contains('Creambath'),
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServeceWidget(
                name: 'Protein',
                price: '25000',
                tapHandler: handleServiceSelected,
                isSelected: serviceSelected.contains('Protein'),
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServeceWidget(
                name: 'Perming',
                price: '50000',
                tapHandler: handleServiceSelected,
                isSelected: serviceSelected.contains('Perming'),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BarbermenWidget(
                  imgPath: 'assets/1.png',
                  name: 'agus',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'agus',
                ),
                const SizedBox(
                  width: 15.0,
                ),
                BarbermenWidget(
                  imgPath: 'assets/2.png',
                  name: 'budi',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'budi',
                ),
                const SizedBox(
                  width: 15.0,
                ),
                BarbermenWidget(
                  imgPath: 'assets/3.png',
                  name: 'joko',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'joko',
                ),
                const SizedBox(
                  width: 15.0,
                ),
                BarbermenWidget(
                  imgPath: 'assets/4.png',
                  name: 'joni',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'joni',
                ),
                const SizedBox(
                  width: 15.0,
                ),
                BarbermenWidget(
                  imgPath: 'assets/5.png',
                  name: 'jun',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'jun',
                ),
                const SizedBox(
                  width: 15.0,
                ),
                BarbermenWidget(
                  imgPath: 'assets/6.png',
                  name: 'eko',
                  tapHandler: _selectBarbermen,
                  isSelected: selectedBarbermen == 'eko',
                ),
                const SizedBox(
                  width: 15.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              TimeWidget(
                time: '08.30',
                tapHandler: _selectTime,
                isSelected: selectedTime == '08.30',
              ),
              const SizedBox(
                width: 15.0,
              ),
              TimeWidget(
                time: '10.30',
                tapHandler: _selectTime,
                isSelected: selectedTime == '10.30',
              ),
              const SizedBox(
                width: 15.0,
              ),
              TimeWidget(
                time: '13.30',
                tapHandler: _selectTime,
                isSelected: selectedTime == '13.30',
              ),
              const SizedBox(
                width: 15.0,
              ),
              TimeWidget(
                time: '15.30',
                tapHandler: _selectTime,
                isSelected: selectedTime == '15.30',
              ),
              const SizedBox(
                width: 15.0,
              ),
              TimeWidget(
                time: '18.30',
                tapHandler: _selectTime,
                isSelected: selectedTime == '18.30',
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Container(
          //       height: 50,
          //       width: double.infinity,
          //       child: Center(
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               "Pesan Lewat WhatsApp",
          //               style: TextStyle(
          //                 fontSize: 20.0,
          //                 fontFamily: 'Nunito',
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
