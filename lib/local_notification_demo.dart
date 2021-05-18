import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'data_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

FlutterLocalNotificationsPlugin notificationsPlugin =
FlutterLocalNotificationsPlugin();

class LocalNotificationDemo extends StatefulWidget {
  @override
  _LocalNotificationDemoState createState() => _LocalNotificationDemoState();
}

class _LocalNotificationDemoState extends State<LocalNotificationDemo> {
  @override
  void initState() {
    initializeSetting();
    tz.initializeTimeZones();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CachedNetworkImage(
                      height: 60,
                      width: 60,
                      imageUrl: data[i].firstTeamLogo,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data[i].firstTeamName,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Text('Vs'),
                Column(
                  children: [
                    CachedNetworkImage(
                      height: 60,
                      width: 60,
                      imageUrl: data[i].secondTeamLogo,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      data[i].secondTeamName,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    displayNotification(data[i].firstTeamName +
                        ' vs ' +
                        data[i].secondTeamName,
                    data[i].dateTime);
                  },
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  Future<void> displayNotification(String match, DateTime dateTime) async {
    notificationsPlugin.zonedSchedule(
        0,
        match,
        'Match is Started',
        tz.TZDateTime.from(dateTime, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
              'channel id', 'channel name', 'channel description'),
        ),
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true);
  }
}

void initializeSetting() async {
  var initializeAndroid = AndroidInitializationSettings('my_logo');
  var initializeSetting = InitializationSettings(android: initializeAndroid);
  await notificationsPlugin.initialize(initializeSetting);
}