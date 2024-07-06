import 'package:event_portfolio/src/constants/e_colors.dart';
import 'package:event_portfolio/src/features/event_portfolio/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventInfoWidget extends StatelessWidget {
  EventInfoWidget({
    super.key,
    required this.eventModel,
  });

  final EventModel eventModel;
  final List<Map<String, String>> eventCountDown = [
    {"Jours": "00"},
    {"Heures": "00"},
    {"Minutes": "00"},
    {"Secondes": "00"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    eventModel.eventNom,
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: EColors.ePrimaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FittedBox(
                      child: Text(
                        eventModel.eventLocation,
                        style: GoogleFonts.roboto(
                          color: Colors.grey.shade800,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (int index) {
                return Column(
                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            eventCountDown[index].values.first,
                          ),
                        ),
                      ),
                    ),
                    FittedBox(
                      child: Text(
                        eventCountDown[index].keys.first,
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: EColors.eSecondaryColor,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
