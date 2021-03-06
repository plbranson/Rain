/**
 * Copyright 2021 Patrick L. Branson
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
 
Raindrop[] raindrops = new Raindrop[750];

void setup() {
  size(640, 360);
  
  for (int index = 0; index < raindrops.length; ++index) {
    raindrops[index] = new Raindrop();
  }
}

void draw() {
  background(0); // Black background to make it easier to see
  for (int index = 0; index < raindrops.length; ++index) {
    raindrops[index].fall();
    raindrops[index].show();
  }
}
