```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Use jsonDecode to parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data as needed
      print(jsonData['key']);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, e.g., retry or display error message
  }
}
```