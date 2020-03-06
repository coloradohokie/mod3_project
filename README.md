# mod3_project

##Overview
This project is for my 3rd Module at Flatiron School. It is a proof of concept project for a new feature I want to implement in my 2nd Module project which is an app for motorcycle riding.

This project is a route finder between two cities. Because many people ride motorcycles for joy and not for transportation, the focus is rarely to find the most efficient route. Instead, you want to find roads which are fun to ride. These roads are generally twisty and sparsely populated.

To use this app, simply load the app and select your start and end locations in the top bar. The app will then display a list of routes and some properties of those routes to help you decide which to choose. Routes are both one-way and loop.

##Searching for a Route
On the main page, select a starting location and an ending location, and click on Find Routes. Known motorcycling routes between the two locations will be displayed. 

##Adding a Route
Routes can be created using the Add Route function. Please note that when adding a route, you need to include a link from Google Maps. This link must be generated using the "Embed" feature. Please following thise instructions:
  1. Load Google Maps
  2. Use the directions feature to load the start point and end point of your route.
  3. Use the "Add a Destination" feature to set waypoints:
      Type the name of an intermediate town in the "Add Destination" field.
      Drag that destination between the start and end point. You may need to do this several times.
      NOTE: Just dragging the route out WILL NOT WORK. This is a bug with google maps.
  4. Click "Details" underneath the route in the sidebar.
  5. Click the share icon.
  6. Click "Embed"
  7. Click "Copy Link"
  8. Paste that link in the appropriate field in the "Add Route" form.
 
NOTE: The inefficiency of this process is not lost on me, and was ultimately the problem I set out to improve/automate, but I was unable to figure out a way to do so upon a review of the Google Maps APIs. :(
 
##Adding a Town
If the start oint or destination you desire does not exist you can add it using the "Add Town" function. Click the link, type in the name.
