#!/bin/sh

shred_Garbage()
{
	local file
	find /home/bombenheimer/.Garbage -type f 2>/dev/null | while read -r file; do
		shred -ufvz -n 3 "$file"
	done
}

shred_Garbage
