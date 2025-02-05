import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherService {
  UrlLauncherService._();

  static Future<void> launchWeb(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
        print('Launched $uri');
      } else {
        throw 'error launching $url';
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
