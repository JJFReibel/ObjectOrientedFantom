
/*
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

class Car {
   Int wheels
   Int doors
   Int cylinders

   new make(Int wheelsIn, Int doorsIn, Int cylindersIn) {
     this.wheels = wheelsIn
     this.doors = doorsIn
     this.cylinders = cylindersIn
   }
   
   Void addWheels(Int wheelsIn){
   	this.wheels += wheelsIn
   }
   Void addDoors(Int doorsIn){
   	this.doors += doorsIn
   }
   Void addCylinders(Int cylindersIn){
   	this.cylinders += cylindersIn
   }
   Void deleteWheels(Int wheelsIn){
   	this.wheels -= wheelsIn
   }
   Void deleteDoors(Int doorsIn){
   	this.doors -= doorsIn
   }
   Void deleteCylinders(Int cylindersIn){
   	this.cylinders -= cylindersIn
   }

   Void echoParts() {
    echo( "Wheel check: " + this.wheels )
    echo( "Door check: " + this.doors )
    echo( "Cylinder check: " + this.cylinders )
    echo("\n")
   }
 }
 
 

class CarExample
{
  static Void main()
  {
    echo("Creating car.")
    subaru := Car.make(4, 4, 4)
    subaru.echoParts()
    echo("Adding wheel directly to car object.")
    subaru.wheels = 5
    subaru.echoParts()
    echo("Removing wheel using object method.")
    subaru.deleteWheels(1)
    subaru.echoParts()
  }
}