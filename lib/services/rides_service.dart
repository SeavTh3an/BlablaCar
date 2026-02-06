import 'dart:math';

import '../data/dummy_data.dart';
import '../model/ride/locations.dart';
import '../model/ride/ride.dart';

class RidesService {
  static List<Ride> availableRides = fakeRides; // TODO for now fake data
  //
  //  filter the rides starting from given departure location
  //
  static List<Ride> _filterByDeparture(Location departure) {
    List<Ride> filterRide = [];
    availableRides.map((e) {
      if (departure == e.departureLocation) {
        filterRide.add(e);
      }
    });
    return filterRide;
  }

  //
  //  filter the rides starting for the given requested seat number
  //
  static List<Ride> _filterBySeatRequested(int requestedSeat) {
    List<Ride> filterSeat = [];
    availableRides.map((e) {
      if (requestedSeat <= e.remainingSeats) {
        filterSeat.add(e);
      }
    });
    return filterSeat;
  }

  //
  //  filter the rides   with several optional criteria (flexible filter options)
  //
  static List<Ride> filterBy({Location? departure, int? seatRequested}) {
    return [];
  }
}
