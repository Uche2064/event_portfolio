import 'package:event_portfolio/src/features/event_portfolio/models/event_countdown.dart';

class EventModel {
  final int eventPrix;
  final String eventNom;
  final String eventLocation;
  final String image;
  EventModel({
    required this.eventPrix,
    required this.eventNom,
    required this.eventLocation,
    required this.image,
  });
}
