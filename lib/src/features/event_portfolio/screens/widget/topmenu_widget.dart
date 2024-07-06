import 'package:event_portfolio/src/constants/e_colors.dart';
import 'package:event_portfolio/src/constants/e_values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopmenuWidget extends StatelessWidget {
  const TopmenuWidget({required this.eventPrice, super.key});
  final int eventPrice;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Text(EValues.aPartirDe + ":"),
                    ),
                    Expanded(
                        child: FittedBox(
                      child: Text(
                        eventPrice.toString() + " xof",
                        style: GoogleFonts.poppins(
                          color: EColors.ePrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    )),
                  ],
                ),
              )),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: EColors.ePrimaryColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                  child: FittedBox(
                    child: Text(
                      EValues.jAcheterMaintenant,
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
