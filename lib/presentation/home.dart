import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geo_live_tracking/buisness_logic/gmaps/g_maps_cubit.dart';
import 'package:geo_live_tracking/data_layer/maps_api.dart';
import 'package:geo_live_tracking/models/auto_complete_model.dart';
import 'package:geo_live_tracking/presentation/widget/confirm_button.dart';
import 'package:geo_live_tracking/presentation/widget/dest_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        height: 200,
        color: Colors.white,
        child: Center(
          child: ConfirmButton(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Track live",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 20, bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 0.4),
                    borderRadius: BorderRadius.circular(20)),
                child: Autocomplete<String>(
                  optionsBuilder: (textEditingValue) async {
                    if (textEditingValue.text == "") {
                      return const Iterable<String>.empty();
                    } else {
                      final places = await MapsApi()
                          .getAutoComplete(textEditingValue.text);
                      if (places is AutoCompleteModel) {
                        return places.predictions!
                            .map((e) => e.description!)
                            .toList();
                      }
                      return ['Ettimadai', 'Ettimadai Railway Station Road'];
                    }
                  },
                  fieldViewBuilder: (BuildContext context,
                      TextEditingController textEditingController,
                      FocusNode focusNode,
                      VoidCallback onFieldSubmitted) {
                    return TextField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      onSubmitted: (String value) {
                        onFieldSubmitted();
                      },
                      decoration: InputDecoration(
                          fillColor: Color.fromRGBO(217, 217, 217, 0.4),
                          focusColor: Color.fromRGBO(217, 217, 217, 0.4),
                          hoverColor: Color.fromRGBO(217, 217, 217, 0.4),
                          hintText: "Your destination",
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20))),
                    );
                  },
                  onSelected: (String selection) {
                    print('You just selected $selection');
                  },
                ),
              ),
            ),
            Text(
              "Your desitnation:",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: DestinationCard(
                  name: "Kashyapa bhavanam",
                  speed: "10 m/s",
                  distance: "300m"),
            )
          ],
        ),
      ),
    );
  }
}
