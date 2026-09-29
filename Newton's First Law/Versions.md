###v1.0 — Core Prototype

The first working Octave prototype of the Newton's First Law simulation.

###Implemented:
* 2D position and velocity
* Multiple forces with magnitude and direction
* Net force calculation
* Acceleration calculation using Newton's Second Law
* Velocity and position updates
* Configurable mass and initial velocity
* Basic simulation timestep
* Final position, velocity, and acceleration output

###Purpose:
This version establishes the core physics and simulation structure that will be expanded and improved in later versions.

## v1.1 — Console Input & Output Formatting

Improved the Newton's First Law prototype by adding console input for simulation parameters and improving the formatting of the final simulation results.

### Implemented:
* Console input for mass
* Console input for initial position
* Console input for initial velocity
* Console input for time step
* Console input for total simulation time
* Console input for two forces
* Formatted final position output
* Formatted final velocity output
* Formatted acceleration output
* Formatted net force output
* Added units to the displayed results

### Purpose:
This version makes the prototype interactive through the console and provides clearer, more readable simulation results while keeping the core physics from v1.0 unchanged.

###v1.2 — Simulation Time Handling

Improved the simulation's time handling and state storage.

###Implemented:

* Simulation loop starts from the second time index
* Position, velocity, and acceleration are stored using the correct time index
* Initial state is separated from calculated states
* Final simulation time validation
* Support for time steps that do not divide the total simulation time exactly
* Validation tests using different forces, velocities, and time steps

###Purpose:
This version improves the accuracy and consistency of the simulation's time and state handling, ensuring that each calculated state corresponds to the correct simulation time.

###v1.3 — Enhanced Simulation Output

Improved the Newton's First Law prototype by expanding the simulation output and explicitly tracking the initial state of the simulation.

###Implemented:

* Initial position and velocity tracking
* Initial state output
* Force 1, Force 2, and net force output
* Separate acceleration output
* Final position and velocity output
* Total simulation time output
* Number of simulation steps output
* Initial state stored in the simulation arrays
* Improved organization and readability of simulation results

###Purpose:
This version improves the clarity and structure of the simulation results without introducing new physics. It establishes a clearer distinction between the initial state, forces, acceleration, final state, and simulation information, preparing the prototype for visualization and further testing in later versions.

###v1.4 — Basic Visualization

Improved the Newton's First Law prototype by adding graphical visualization of the object's motion, forces, velocity, acceleration, and simulation data.

###Implemented:

* Object trajectory visualization
* Initial and final position markers
* Force 1, Force 2, and net force vectors
* Final velocity vector
* Force and velocity vector labels
* Net force and acceleration information
* Initial and final speed calculation
* Position vs. time graph
* X and Y position components on the position graph
* Velocity vs. time graph
* X and Y velocity components on the velocity graph
* Graph labels, titles, legends, and grids
* Improved visual distinction between different vectors

###Purpose:
This version adds the first visual representation of the simulation, making the object's motion and the effects of the applied forces easier to understand. It also provides graphical representations of position and velocity over time, preparing the prototype for further visualization, testing, and interaction in later versions.
