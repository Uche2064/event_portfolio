import "package:event_portfolio/src/features/event_portfolio/data/event_data.dart";
import "package:event_portfolio/src/features/event_portfolio/screens/widget/custom_event_card.dart";
import "package:event_portfolio/src/utils/responsive.dart";
import "package:flutter/material.dart";

class EventPortfolio extends StatelessWidget {
  EventPortfolio({super.key});
  final eventData = EventData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Portfolio"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: GridView.builder(
            itemCount: eventData.events.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, int index) {
              return CustomEventCard(
                eventModel: eventData.events[index],
              );
            }),
      ),
    );
  }
}
