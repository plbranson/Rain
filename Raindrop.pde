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
 
final class Raindrop {
  
  // The x, y, & z positions
  private float x, y, z;
  
  // The size of the raindrop
  private float size;
  
  // The speed at which the raindrop fall on the y-axis
  private float speed;
  
  public Raindrop() {
    this.x = random(width);
    this.y = random(-500, -50);
    
    // Gives a three-dimensonal prospective
    this.z = random(0, 20);
    
    // The closer the the screen the faster the raindrop falls.
    // The further away from the screen the slower it falls. It
    // is heavily based on the z-axis value.
    this.size = map(this.z, 0, 20, 10, 20);
    this.speed = map(this.z, 0, 20, 1, 20);
  }
  
  
  void fall() {
    this.y += this.speed;
    
    float gravity = map(this.z, 0, 20, 0, 0.2);
    this.speed += gravity;
    
    if (this.y > height) {
      this.y = random(-200, -100);
      this.speed = map(this.z, 0, 20, 4, 10);
    }
  }
  
  void show() {
    // the thickness of the raindrop
    float thickness = map(this.z, 0, 20, 1, 3);
    
    // Generates a random raindrop colors
    stroke(random(255), random(255), random(255));
    strokeWeight(thickness);
    
    // Draws the two point of the raindrop
    line(this.x, this.y, this.x, this.y + this.size);
  }
}
