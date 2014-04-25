#! /usr/bin/env python3
import math
import sys
import json
bcd = json.loads(sys.argv[1])
shelf_heights = list(map(float, bcd["shelves"]))
bit_width = float(bcd["bit_width_mm"])
board_thickness = float(bcd["board_thickness_mm"])
if bit_width > board_thickness:
	sys.stderr.write("Error: slots that fit a board of thickness %f cannot be cut with a bit of thickness %f" % (board_thickness, bit_width))
slot_depth = float(bcd["slot_depth_mm"])
board_depth = float(bcd["board_depth_mm"])
if slot_depth > board_thickness:
	sys.stderr.write("Error: slot depth %f is greater than board thickness %f" % (slot_depth, board_thickness))
	sys.exit(1)

slot_extent_width = board_thickness - bit_width
num_passes_per_slot = math.ceil(board_thickness / bit_width)
print("%f %f" % (slot_extent_width, num_passes_per_slot))
slot_offsets = []
for x in range(num_passes_per_slot):
	print("Cut %d:" % x)
	offset = (bit_width / 2) + (x * slot_extent_width) / (num_passes_per_slot - 1)
	print(offset)
	print()
	slot_offsets.append(offset)
total_x = 0.0
y_position = 0
for h in shelf_heights:
	print("# Move to beginning of next row, skipping %f mm for gap" % h)
	print("goto3 %f %f 15" % (total_x + bit_width / 2, y_position))
	print("goto3 %f %f %f" % (total_x + bit_width / 2, y_position, -slot_depth))
	print("# Cutting slot")
	for o in slot_offsets:
		print("goto3 %f %f %f" % (total_x + o, y_position, -slot_depth))
		y_position = board_depth - y_position
		print("goto3 %f %f %f" % (total_x + o, y_position, -slot_depth))
	print("# Finished cutting slot, move bit straight up")
	print("goto3 %f %f 15" % (total_x + board_thickness - bit_width / 2, y_position))
	print("# DONE ROW")
	total_x += h + board_thickness
