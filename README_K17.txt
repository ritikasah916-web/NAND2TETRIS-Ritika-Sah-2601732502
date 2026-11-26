CAPSTONE PROJECT - UPDATED FOR SIYA SINGH

Name: Siya Singh
Roll No.: 2501730417
K: 17

K-based calculations:
- K mod 3 = 2
- K mod 4 = 1
- Box width = 16 x ((K mod 4) + 1) = 16 x 2 = 32 pixels
- Box height = 20 rows
- Starting row = 0

Box.asm draws 2 consecutive 16-bit screen words in each of 20 rows.
The address advances by 32 screen words between row starts.

Run:
    python assembler.py Box.asm

This regenerates Box.hack and symbols.txt in this folder.
