#!/bin/sh

shred_DS_Store()
{
	local file
	find / -type f -name '.DS_Store' 2>/dev/null | while read -r file; do
		shred -ufvz -n 3 "$file"
	done
}

shred_DS_Store
