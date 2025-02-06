String formatTime(int seconds) {
  final hours = (seconds ~/ 3600).toString().padLeft(2, '0');
  final minutes = ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');
  final secs = (seconds % 60).toString().padLeft(2, '0');
  
  return "$hours:$minutes:$secs";
}

void main() {
  // Unit tests
  assert(formatTime(0) == "00:00:00");
  assert(formatTime(5) == "00:00:05");
  assert(formatTime(65) == "00:01:05");
  assert(formatTime(3600) == "01:00:00");
  assert(formatTime(3661) == "01:01:01");
  assert(formatTime(86399) == "23:59:59");
  assert(formatTime(86400) == "24:00:00");
  assert(formatTime(90061) == "25:01:01");
  
  print("All tests passed!");
}