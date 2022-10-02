import 'package:doctor_app/data/timeslot.dart';
import 'package:flutter/material.dart';

// import '../datafiles/timeslot.dart';

class TimeSlotsEvening extends StatefulWidget {
  const TimeSlotsEvening({Key? key}) : super(key: key);

  @override
  State<TimeSlotsEvening> createState() => _TimeSlotsEveningState();
}

class _TimeSlotsEveningState extends State<TimeSlotsEvening> {
  int selectedIndex = 0;
  get timeslot => TimeSlotEvening;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: List.generate(5, (index) {
            return InkWell(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  // height: 30,
                  // width: 50,
                  decoration: BoxDecoration(
                      color: selectedIndex==index?const Color(0xff0066ff):Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: const Color(0xff0066ff),width: 2)
                  ),
                  child: Center(
                    child: Text(
                      "${timeslot[index]}",
                      style: selectedIndex==index?const TextStyle(color: Colors.white):const TextStyle(color: Color(0xff0066ff)),

                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
