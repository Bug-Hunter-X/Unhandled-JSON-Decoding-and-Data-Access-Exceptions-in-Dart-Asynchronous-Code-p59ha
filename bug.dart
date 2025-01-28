```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
      print(jsonData['someKey']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error properly
    print('Error fetching data: $e');
    rethrow; // Consider rethrowing the error for higher-level handling
  }
}

void main() async {
  await fetchData();
}
```