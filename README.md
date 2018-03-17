# To set up settings to use vim for arduino

## Installation


### Step 1: Download and Install Arduino IDE from their [website](https://www.arduino.cc/en/Main/Software) .

If this is the first time you are using arduino (ie. if you have never even used Arduino IDE before),

Open Terminal and type:

ls -l /dev/ttyACM*

you will get something like:

crw-rw---- 1 root dialout 188, 0 5 apr 23.01 ttyACM0

The "0" at the end of ACM might be a different number, or multiple entries might be returned. The data we need is "dialout" (is the group owner of the file).

Now we just need to add our user to the group:

sudo usermod -a -G dialout <username>

where <username> is your linux user name. 
**You will need to log out and log in again for this change to take effect.**

### Step 2: Clone this repository

Clone this repository in any desired directory.
**Don't clone this into your home repository**

### Step 3: run $./install.sh in your terminal


### Step 4: Configuration

Navigate to ~/ardbin/
Open "make-uno" in any text editor
Give path to your installed arduino directory in "ARDUINO_DIR".
**Be sure to give Absolute Path. It won't work if relative path is given**

In the "ARDMK_DIR" variable, give path as "/home/your-username/.arduino_mk"
**Again, be sure you use Absolute Path**