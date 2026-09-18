# Landmarks

A SwiftUI app that lists national-park landmarks and opens a detail screen for each one,
with a map, a photo and a description. Built while working through Apple's SwiftUI
tutorial as a university lab assignment.

## What it does

- Scrollable list of 12 landmarks, each row showing a thumbnail, the name and a star
  for favourites
- Detail screen with a MapKit map centred on the landmark, a circular photo overlapping
  the map, and the park, state and description
- Navigation built with `NavigationSplitView` and `NavigationLink`, so the layout adapts
  between iPhone and iPad
- Landmark data decoded from a bundled JSON file into `Codable` models

## Structure

```
Model/
  Landmark.swift      Codable, Hashable, Identifiable model; exposes a CLLocationCoordinate2D
  ModelData.swift     generic JSON loader from the app bundle
Views/
  ContentView.swift   app entry view
  LandmarkList.swift  NavigationSplitView with the list and detail placeholder
  LandmarkRow.swift   single row: thumbnail, name, favourite star
  LandmarkDetail.swift map, circular image and text sections in a ScrollView
  MapView.swift       MapKit map for a coordinate
  CircleImage.swift   reusable circular image with border and shadow
Resources/
  landmarkData.json   sample data
```

## Built with

Swift, SwiftUI, MapKit, Codable. Previews via `#Preview`.

## Notes

This repository contains the sources only - the Xcode project file is not included, so
it will not build as-is. The landmark data and photographs come from Apple's SwiftUI
tutorial sample content and belong to Apple; the code follows that tutorial.
