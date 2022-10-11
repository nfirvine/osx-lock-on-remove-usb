# osx-lock-on-remove-usb
Lock the screen on OS X when some USB device is removed

# Find vendor and product ID

Run `system_profiler SPUSBDataType` in your terminal and look for your USB device.
Copy the `Vendor ID` and the `Product ID` after the `0x` part and paste them in the installation command.

# Installation

`./install.sh <vendor-id> <product-id>`

# First run
After the install detach your usb device to trigger the script.
This will ask for "bash" to have access to "Accessibility", do so to fully enable the script.

# Uninstall

`./uninstall.sh <vendor-id> <product-id>`