import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:push_notification/main.dart';
import 'package:push_notification/pages/notification_page.dart';

Future<void> handleBackgoundMessage(RemoteMessage message) async {
  print('Token : ${message.notification!.title}');
  print('Body : ${message.notification!.body}');
  print('Playload : ${message.data}');
}

class FirebaseApi {
  final firebaseMessaging = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? message) {
    if (message == null) return;{
      navigatorKey.currentState!.pushNamed(
        NotificationPage.route,
        arguments: message,
      );
    }
  }

  Future initPushNotification() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgoundMessage);
  }

  Future<void> initNotifications() async {
    await firebaseMessaging.requestPermission();
    final fCMToken = await firebaseMessaging.getToken();
    print('Token : $fCMToken');
    FirebaseMessaging.onBackgroundMessage(handleBackgoundMessage);
    initPushNotification();
  }
}
