import 'package:event_portfolio/src/features/event_portfolio/models/event_model.dart';
import 'package:flutter/material.dart';

import 'event_info_widget.dart';
import 'topmenu_widget.dart';

class CustomEventCard extends StatelessWidget {
  const CustomEventCard({required this.eventModel, super.key});
  final EventModel eventModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                child: TopmenuWidget(
                  eventPrice: eventModel.eventPrix,
                ),
              )),
          Expanded(
            flex: 6,
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
              image: AssetImage(eventModel.image),
              fit: BoxFit.cover,
            ))),
          ),
          Expanded(
            flex: 4,
            child: EventInfoWidget(eventModel: eventModel),
          ),
        ],
      ),
    );
  }
}
