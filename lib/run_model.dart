class RunModel {
  final date;
  final distance;
  final time;
  final route;

  // 1: easy
  // 2: medium
  // 3: hard
  final intensity;

  RunModel({this.date, this.distance, this.time, this.route, this.intensity});

  static List<RunModel> allRuns() {
    return [
      RunModel(
        date: '28/06/2021',
        distance: '1 km',
        time: '00:15:00',
        route: 'Plaza',
        intensity: 1,
      ),
      RunModel(
        date: '29/06/2021',
        distance: '2 km',
        time: '00:20:00',
        route: 'Pindamonhangaba',
        intensity: 2,
      ),
      RunModel(
        date: '30/06/2021',
        distance: '3 km',
        time: '00:21:35',
        route: 'Vitas blblblblblblblbbl',
        intensity: 3,
      ),
      RunModel(
        date: '28/06/2021',
        distance: '1 km',
        time: '00:15:00',
        route: 'Plaza',
        intensity: 1,
      ),
      RunModel(
        date: '29/06/2021',
        distance: '2 km',
        time: '00:20:00',
        route: 'Pindamonhangaba',
        intensity: 2,
      ),
      RunModel(
        date: '30/06/2021',
        distance: '3 km',
        time: '00:21:35',
        route: 'Vitas blblblblblblblbbl',
        intensity: 3,
      ),
      RunModel(
        date: '28/06/2021',
        distance: '1 km',
        time: '00:15:00',
        route: 'Plaza',
        intensity: 1,
      ),
      RunModel(
        date: '29/06/2021',
        distance: '2 km',
        time: '00:20:00',
        route: 'Pindamonhangaba',
        intensity: 2,
      ),
      RunModel(
        date: '30/06/2021',
        distance: '3 km',
        time: '00:21:35',
        route: 'Vitas blblblblblblblbbl',
        intensity: 3,
      )
    ];
  }
}
