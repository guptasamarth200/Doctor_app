import 'package:doctor_app/widgets/time_slots_afternoon.dart';
import 'package:doctor_app/widgets/time_slots_evening.dart';
import 'package:doctor_app/widgets/time_slots_morning.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../data/timeslot.dart';

class BookingSlots extends StatefulWidget {
  const BookingSlots({Key? key}) : super(key: key);

  @override
  State<BookingSlots> createState() => _BookingSlotsState();
}

class _BookingSlotsState extends State<BookingSlots> {

  DateTime _date = DateTime.now();
  DateTime _date1 = DateTime.now();
  String _day = '${DateFormat.EEEE().format(DateTime.now())}';
  String _datee = '${DateTime.now().day}';
  String _month = '${DateFormat.MMMM().format(DateTime.now())}';
  bool cond = false;
  int selectedIndex = 0;
  List <Widget> x = <Widget>[
    const TimeSlotsMorning(),
    const TimeSlotsAfternoon(),
    const TimeSlotsEvening(),
  ];
  int selectedIndex1 = 0;
  int a=0;
  get slot => Slot;

  Future<void> _selectDate(BuildContext context) async{
    DateTime? datePicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: _date.subtract(const Duration(days: 30)),
      lastDate: _date.add(const Duration(days: 30)),
      initialDatePickerMode: DatePickerMode.day,
      builder: (BuildContext context, Widget? child){
        return Theme(
            data: ThemeData(
              primaryColor: const Color(0xFF003399),
            ),
            child: child!
        );
      }
    );
    if (datePicker !=null && datePicker != _date){
      setState(() {
        _date = datePicker;
        _date1 = datePicker;
        print(
          _date.toString(),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.140,
                width: MediaQuery.of(context).size.width*0.750,
                decoration: const BoxDecoration(
                  color: Color(0xFFFEC6C6),
                  borderRadius: BorderRadius.all(Radius.circular(25))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Dr. Naresh Trehan", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Senior Cardiologist and Surgeon", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.white),),
                    SizedBox(height: 5,),
                    Text("Managing Director of the Medanta", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      children: List.generate(4, (index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectedIndex = index;
                              _date = _date1;
                              _day = '${DateFormat.EEEE().format(_date1.add(Duration(days: index)))}';
                              _month = '${DateFormat.MMMM().format(_date1.add(Duration(days: index)))}';
                              _datee = '${_date1.add(Duration(days: index)).day}';
                              cond = false;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              decoration: BoxDecoration(
                                color: selectedIndex==index?const Color(0xff0066ff):Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: const Color(0xff0066ff), width: 2)
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${DateFormat.EEEE().format(_date1.add(Duration(days: index)))}'.substring(0,3),
                                      style: selectedIndex==index?const TextStyle(color: Colors.white):const TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                        '${_date1.add(Duration(days: index)).day}',
                                      style: selectedIndex==index?const TextStyle(color: Colors.white):const TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        setState(() {
                          _selectDate(context);
                          selectedIndex = -1;
                          cond = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff003399),
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: Color(0xff003399),
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  cond?'${_date.day}':_datee,
                                  style: GoogleFonts.robotoMono(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25
                                  ),
                                ),
                                const SizedBox(width: 15,),
                                Text(
                                  cond?'${DateFormat.EEEE().format(_date)}':_day,
                                  style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 18,fontWeight:FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  cond?'${DateFormat.MMMM().format(_date)}':_month,
                                  style: GoogleFonts.robotoMono(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal:5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text("Slots",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold, fontSize: 25),
                ),),
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.horizontal,
                        children: List.generate(3, (index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex1 = index;
                                a = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 30),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                decoration: BoxDecoration(
                                  color: selectedIndex1==index?const Color(0xff0066ff):Colors.white,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: const Color(0xff0066ff), width: 2)
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        '${slot[index]}',
                                        style: selectedIndex1==index?const TextStyle(color: Colors.white):const TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }

                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Text("Time Slots", style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 25),),
                ),
                const SizedBox(height: 20,),
                x[a]
              ],
            ),
          ),
          const SizedBox(height: 20,),
          TextButton(
            onPressed: (){
              print("Booked Appointment");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.94,
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xff003399),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: const Text('Book Appointment', style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
