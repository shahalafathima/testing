// Importing the Flutter material package
import 'package:flutter/material.dart';

// The main entry point for the Flutter application
void main() {
  // Running the app by calling the MyApp widget
  runApp(MyApp());
}

// MyApp class, which is a StatefulWidget
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// _MyAppState class, representing the state of the MyApp widget
class _MyAppState extends State<MyApp> {
  // A variable to store the currently selected value in the dropdown
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    // MaterialApp widget, providing the basic app structure
    return MaterialApp(
      // Scaffold widget, representing the basic material design structure
      home: Scaffold(
        // AppBar widget, displaying the title of the app
        appBar: AppBar(
          title: Text('Dropdown Example'),
        ),
        // Padding widget, adding padding around the column
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          // Column widget, arranging its children in a vertical column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // DropdownButton widget, allowing the user to select from a list of options
              DropdownButton<String>(
                // The currently selected value in the dropdown
                value: selectedValue,
                // List of dropdown items, each representing an option
                items: ['Option 1', 'Option 2', 'Option 3'].map((String value) {
                  return DropdownMenuItem<String>(
                    // The value associated with the dropdown item
                    value: value,
                    // The content of the dropdown item (displayed text)
                    child: Text(value),
                  );
                }).toList(),
                // Callback function triggered when the user selects a new option
                onChanged: (String? newValue) {
                  // Updating the state to reflect the new selected value
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
              // SizedBox widget, adding some vertical space between the dropdown and other elements
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
