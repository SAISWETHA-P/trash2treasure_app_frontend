import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'industry_confirm_order.dart';

class CollectionAddressPage extends StatefulWidget {
  @override
  _CollectionAddressPageState createState() => _CollectionAddressPageState();
}

class _CollectionAddressPageState extends State<CollectionAddressPage> {
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  // For date and time
  String _selectedDate = "Select Date";
  String _selectedTime = "Select Time";

  // Fetch live location
  Future<void> _getLiveLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        locationController.text =
        "Lat: ${position.latitude}, Lng: ${position.longitude}";
      });
    } catch (e) {
      setState(() {
        locationController.text = "Unable to fetch location.";
      });
    }
  }

  // Function to pick a date
  Future<void> _pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
      });
    }
  }

  // Function to pick a time
  Future<void> _pickTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Text(
                "Collection Address",
                style: TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Add navigation or function for the profile icon here

              },
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Where should we collect your recyclables?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Address Card
            _buildCard(
              title: "Collection Address",
              icon: Icons.location_city,
              child: Column(
                children: [
                  _buildTextField(
                      controller: addressController, hint: "Street Address"),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                            controller: cityController, hint: "City"),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: _buildTextField(
                            controller: stateController, hint: "State"),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                      controller: zipCodeController, hint: "Zip Code"),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Date & Time Card
            _buildCard(
              title: "Pick Date & Time",
              icon: Icons.calendar_today,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: _pickDate,
                      child: _buildPickerField(
                          value: _selectedDate, icon: Icons.date_range),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: _pickTime,
                      child: _buildPickerField(
                          value: _selectedTime, icon: Icons.access_time),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Live Location Card
            _buildCard(
              title: "Live Location",
              icon: Icons.gps_fixed,
              child: _buildTextField(
                controller: locationController,
                hint: "Tap to get location",
                suffixIcon: IconButton(
                  icon: Icon(Icons.gps_fixed, color: Colors.green),
                  onPressed: _getLiveLocation,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Place Order Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IndustryConfirmOrderPage()),
                  );
                },
                child: Text(
                  "Place Order",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      {required String title, required IconData icon, required Widget child}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 16),
            child,
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller,
        required String hint,
        Widget? suffixIcon}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        suffixIcon: suffixIcon,
      ),
    );
  }

  Widget _buildPickerField({required String value, required IconData icon}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(width: 8),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
