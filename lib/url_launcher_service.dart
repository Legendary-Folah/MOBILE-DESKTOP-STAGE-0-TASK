import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherService {
  // UrlLauncherService._();

  Future<void> launchUrlNow(String url) async {
    final Uri _url = Uri.parse(url);
    try {
      if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch $_url');
      }
    } catch (e) {
      print('Error : $e');
    }
  }
}
