```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      if (jsonData is List) {
        final numbers = <int>[];
        for (final element in jsonData) {
          if (element is int) {
            numbers.add(element);
          } else {
            print('Warning: Skipping non-integer value: $element');
          }
        }
        for (int number in numbers) {
          print(number);
        }
      } else {
        print('Warning: JSON response is not a list.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```