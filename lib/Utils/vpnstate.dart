import 'dart:math';

class Vpnutils {
  String vpnstate(String state) {
    if (state == 'VPNStage.disconnected') {
      return 'Disconnected';
    } else if (state == 'VPNStage.connected') {
      return 'Connected';
    } else {
      return 'Authenticating';
    }
  }

  String formatBytes(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) +
        ' ' +
        suffixes[i];
  }

  int duration(String d) {
    List<String> l = d.split(':');

    return int.parse(l[0]) * 3600 + int.parse(l[1]) * 60 + int.parse(l[2]);
  }
  String formatSeconds(int seconds) {
  int hours = seconds ~/ 3600;
  int minutes = (seconds % 3600) ~/ 60;
  int remainingSeconds = seconds % 60;

  String hoursStr = hours.toString().padLeft(2, '0');
  String minutesStr = minutes.toString().padLeft(2, '0');
  String secondsStr = remainingSeconds.toString().padLeft(2, '0');

  return '$hoursStr:$minutesStr:$secondsStr';
}

}
