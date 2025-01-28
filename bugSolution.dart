```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body) as Map<String, dynamic>;
        // Check for the existence of keys before accessing them
        if (jsonData.containsKey('someKey')) {
          print(jsonData['someKey']);
          return jsonData;
        } else {
          print('Key "someKey" not found in JSON data.');
          return null; // Or throw an exception if preferred
        }
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
        return null; // Or throw an exception
      }
    } else {
      print('Failed to load data: ${response.statusCode}');
      return null; // Or throw an exception
    }
  } catch (e) {
    print('Error fetching data: $e');
    return null; // Or rethrow
  }
}

void main() async {
  final data = await fetchData();
  print(data); //Handle the result accordingly
}
```