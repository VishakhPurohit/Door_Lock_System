# Door Lock System

## Overview

This project implements a basic digital door lock system using Verilog HDL. The system verifies an 8-bit password and controls access based on the input. It also includes a counter to track the number of incorrect attempts and triggers an alarm if the maximum number of attempts is exceeded.

## Features

- **Password Verification**: Compares an input password against a predefined password.
- **Access Control**: Grants or denies access based on the correctness of the password.
- **Attempt Counter**: Tracks the number of incorrect password attempts.
- **Alarm System**: Triggers an alarm after a set number of incorrect attempts.

## Modules

### `lock`
This is the top-level module that handles password verification and initializes the predefined password.

#### Inputs:
- `reset`: Resets the system.
- `passin`: 8-bit input password.
- `enter`: Signal to submit the password.

#### Outputs:
- `access`: Indicates whether access is granted.
- `alarm`: Indicates if the alarm is triggered.
- `count`: Number of attempts made.

#### Internal Signals:
- `check`: Compares the input password with the predefined password.
- `setpass`: Stores the predefined password.

#### Functionality:
- Initializes the password to `8'b01101010`.
- Compares the input password with the predefined password.
- Passes control to the `modn_ctr` module to handle access and alarm management.

### `modn_ctr`
This module manages the access control and alarm system, counting the number of incorrect attempts.

#### Parameters:
- `n`: Maximum number of attempts before triggering the alarm (default is 4).
- `width`: Bit width of the counter (default is 2).

#### Inputs:
- `clk`: Clock signal.
- `rstn`: Reset signal (active low).
- `E`: Enable signal, activated when a password attempt is made.

#### Outputs:
- `access`: Indicates whether access is granted.
- `alarm`: Indicates if the alarm is triggered.
- `cnt`: Counts the number of incorrect attempts.

#### Functionality:
- Resets the counter and alarm on a reset signal.
- Increments the counter with each incorrect password attempt.
- Triggers the alarm and denies access if the maximum number of attempts (`n-1`) is reached.

## Usage

1. **Initialization**: The system starts with a predefined password `8'b01101010`.
2. **Password Input**: Enter the 8-bit password through the `passin` input and signal the entry with `enter`.
3. **Access Control**: The system will grant or deny access based on the password correctness.
4. **Alarm**: If the number of incorrect attempts reaches `n-1`, the alarm is triggered.

## Simulation

To test the door lock system:

1. Run a simulation with different input passwords to observe the behavior.
2. Verify that the system correctly grants access for the correct password.
3. Test the counter by entering incorrect passwords and ensuring the alarm triggers after the maximum number of attempts.

## Contact

For any questions or suggestions, please contact [Your Name] at [Your Email].

---