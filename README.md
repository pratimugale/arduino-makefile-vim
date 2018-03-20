# Directly uploading code to Arduino Boards using terminal
Since typing and uploading from the Arduino IDE was annoying, I searched and found this [Arduino-Makefile](https://github.com/sudar/Arduino-Makefile) which knows how to build Arduino sketches. It defines entire workflows for compiling code, flashing it to Arduino and even communicating through Serial monitor. You don't need to change anything in the Arduino sketches.

But since a Makefile needs to be made with every sketch, I created a simple Shell-Script that makes it in one go

To build the Makefile for a UNO sketch, type 
`$ makefile-uno`

To make, reset and upload the sketch I created another Shell-Script
`$ ard-upload`

But to make and use the serial monitor, type
`$ make monitor`
instead.

To exit from monitor: ctrl-a, then k, then "yes"

## Installation


### Step 1: Download and Install Arduino IDE from their [website](https://www.arduino.cc/en/Main/Software) .

If this is the first time you are using arduino (ie. if you have never even used Arduino IDE before),

Open Terminal and type:

`$ ls -l /dev/ttyACM*`

you will get an output that looks like:

`crw-rw---- 1 root dialout 188, 0 5 apr 23.01 ttyACM0`

The "0" at the end of ACM might be a different number, or multiple entries might be returned. The data we need is "dialout" (is the group owner of the file).

Now we just need to add our user to the group:

`$ sudo usermod -a -G dialout <username>`

where <username> is your linux user name. 
**You will need to log out and log in again for this change to take effect.**

### Step 2: Clone this repository

Clone this repository in any desired directory.
**Don't clone this into your home directory**

### Step 3: Run `$ ./install.sh` in your terminal

After Running the above command, navigate to your home directory.

Type this into your terminal:
`$ . ~/.bashrc`

### Step 4: Configuration

Navigate to ~/ardbin/  

Open "make-uno" in any text editor.

Give path to your installed arduino directory in "ARDUINO_DIR".
**Be sure to give Absolute Path. It won't work if relative path is given**

In the "ARDMK_DIR" variable, give path as "/home/your-username/.arduino_mk"
**Again, be sure you use Absolute Path**
