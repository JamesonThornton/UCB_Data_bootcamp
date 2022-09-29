# Module 6 - APIs and gmaps

## Project Overview
we are creating a vacation location search tool. 
we will leverage several APIs to provide a map of locations that meet a set of parameters provided by the user. this map will include city locations as well as hotels nearby and the local weather recently (max temp, humidity, description [cloudy, sunny, rain, etc.])

### expected steps
- 1 create a large list (2000) of random lat/long pairs to generate potential locations around the globe
- 2 use citipy to associate the nearest city to the pre-developed locations
- 3 use API from OpenWeather and import the local weather from the cities determined in previous step
- 4 get input from user on min and max temperature ranges they would like their vacation spot to have (note that OpenWeather provides the peak [max] temp for the day, so the 'minimum' is still of the peak temperature)
- 5 use google maps API to find nearby hotels for this filtered list of cities. leverage Try/Except for locations that do not return a hotel
- 6 use gmaps to present a map with the potential city locations and hotels with pins. clicking on a pin will pop up a window with the available information
- 7 select 4 cities from the list of vacation options
- 8 use gmaps to create a route between these cities, looping back to the starting city. display this map. 

## Challenges
for retrieving weather data we had to include a sleep timer because the free tier of API calls limits to not more than 60 per minute. this causes the data retrieval to take 15-20 minutes, which is undesirable but bearable for learning purposes.

indexing the vacation_df in step 7 was not initially intuitive. I changed index to be the city name, but then later had to change it back to make the popups code more useful

when displaying the cities and the route (with markers) the route markers seem to be ontop of the city markers, so a click pop up didnt works. I later hid the route markers (leaving the blue line route)

one major challenge that was indirectly related to the project was that I could not get gmaps and widgets to work correctly. ultimately what worked was to explicitly specify the version of ipywidgets in my environment to make it work. 

## Data Summary Results
- The WeatherPy_Database contains over 700 cities found from our 2000 lat/long pairs.
- WeatherPy_vacation contains 327 cities; most, but not all, of which have hotels (this is filtered based on user input of min 65 and max 85 degrees F).

![WeatherPy_Vacation_map](Vacation_Search\WeatherPy_vacation_map.png)

- Weather_Vacation_Map includes travel paths shown on the map

![WeatherPy_travel_map](Vacation_Itinerary\WeatherPy_travel_map.png)

![WeatherPy_travel_map_markers](Vacation_Itinerary\WeatherPy_travel_map_markers.png)

## Conclusion
APIs are a powerful skill to add to the toolbelt. access to data across the web enables so many possibilities for future data analysis and exploration. 
additionally gmaps and citipy are both very useful libraries for geographic data and ability to display. 