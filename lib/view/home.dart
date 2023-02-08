import 'package:barbersop_ui/widget/barberman.dart';
import 'package:barbersop_ui/widget/date_widget.dart';
import 'package:barbersop_ui/widget/service_widget.dart';
import 'package:barbersop_ui/widget/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedDate = 8;

  void _selectDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  List<String> serviceSelected = [];
  void handleSelectedService(String name) {
    if (serviceSelected.contains(name)) {
      serviceSelected.remove(name);
    } else {
      serviceSelected.add(name);
    }
    setState(() {});
  }

  var selectedBarber = "Cimeng Barbarian";
  _selectedBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  var selectedTime = '12:00';
  void _selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Book Now",
          style: TextStyle(
            fontFamily: 'FiraSans',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 20,
                left: 15,
                right: 15,
                child: SizedBox(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DateWidget(
                        date: 7,
                        day: 'Tue',
                        isSelected: selectedDate == 7,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 8,
                        day: 'Tue',
                        isSelected: selectedDate == 8,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 9,
                        day: 'Tue',
                        isSelected: selectedDate == 9,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 10,
                        day: 'Tue',
                        isSelected: selectedDate == 10,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 11,
                        day: 'Tue',
                        isSelected: selectedDate == 11,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 12,
                        day: 'Tue',
                        isSelected: selectedDate == 12,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 13,
                        day: 'Tue',
                        isSelected: selectedDate == 13,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                      DateWidget(
                        date: 14,
                        day: 'Tue',
                        isSelected: selectedDate == 14,
                        tapHandler: _selectDate,
                      ),
                      const SizedBox(
                        width: 25.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          Center(
            child: Text(
              "BARBERKING",
              style: TextStyle(
                letterSpacing: 2,
                fontFamily: "Nunito",
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 15,
            children: [
              const SizedBox(
                width: 15.0,
              ),
              ServiceWidget(
                name: "Haircut",
                price: "35.000",
                isSelected: serviceSelected.contains("Haircut"),
                tapHandler: handleSelectedService,
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServiceWidget(
                name: "Creambath",
                price: "40.000",
                isSelected: serviceSelected.contains("Creambath"),
                tapHandler: handleSelectedService,
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServiceWidget(
                name: "Protein",
                price: "50.000",
                isSelected: serviceSelected.contains("Protein"),
                tapHandler: handleSelectedService,
              ),
              const SizedBox(
                width: 15.0,
              ),
              ServiceWidget(
                name: "Perming",
                price: "40.000",
                isSelected: serviceSelected.contains("Perming"),
                tapHandler: handleSelectedService,
              ),
              const SizedBox(
                width: 15.0,
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 175,
            child: ListView(
              padding: EdgeInsets.only(left: 20, right: 20),
              scrollDirection: Axis.horizontal,
              children: [
                Barberman(
                  imgPath: 'assets/images/b1.jpg',
                  name: 'Devi The Conqueror',
                  isSelected: selectedBarber == 'Devi The Conqueror',
                  tapHandler: _selectedBarber,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Barberman(
                  imgPath: 'assets/images/b2.jpg',
                  name: 'Cimeng Barbarian',
                  isSelected: selectedBarber == 'Cimeng Barbarian',
                  tapHandler: _selectedBarber,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Barberman(
                  imgPath: 'assets/images/pesulap.jpeg',
                  name: 'Pesulap Merah',
                  isSelected: selectedBarber == 'Pesulap Merah',
                  tapHandler: _selectedBarber,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Barberman(
                  imgPath: 'assets/images/b3.jpg',
                  name: 'Devi Secret\'s',
                  isSelected: selectedBarber == 'Devi Secret\'s',
                  tapHandler: _selectedBarber,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          SizedBox(
            height: 50.0,
            child: Wrap(
              spacing: 2,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                TimeWidget(
                  time: "11.00",
                  isSelected: selectedTime == "11.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "12.00",
                  isSelected: selectedTime == "12.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "13.00",
                  isSelected: selectedTime == "13.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "14.00",
                  isSelected: selectedTime == "14.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "15.00",
                  isSelected: selectedTime == "15.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "16.00",
                  isSelected: selectedTime == "16.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: "17.00",
                  isSelected: selectedTime == "17.00",
                  tapHandler: _selectTime,
                ),
                const SizedBox(
                  width: 25.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 200.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Order Now",
                        style: TextStyle(
                          fontFamily: 'FiraSans',
                          letterSpacing: 2,
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
