// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cross_device_remote_controller/main.dart';

void main() {
  testWidgets('Play and pause', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyMusicBoxApp());

    expect(find.byKey(const Key('play_button')), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    expect(find.byIcon(Icons.pause), findsNothing);

    // Tap the play button and trigger a frame.
    await tester.tap(find.byKey(const Key('play_button')));
    await tester.pump();

    // Verify that player icon has updated.
    // expect(find.byIcon(Icons.pause), findsNothing);
    // expect(find.byIcon(Icons.pause), findsOneWidget);
  });
}
