# SPDX-FileCopyrightText: 2024 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

linux: clean
	./bin/linux.sh

.PHONEY: clean
clean:
	./bin/cleanup.sh
