# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build

# Include any dependencies generated for this target.
include src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/depend.make

# Include the progress variables for this target.
include src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/progress.make

# Include the compile flags for this target's objects.
include src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/flags.make

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/flags.make
src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o: ../src/logsplice/lcm-logsplice.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/src/logsplice/lcm-logsplice.c

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/src/logsplice/lcm-logsplice.c > CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.i

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/src/logsplice/lcm-logsplice.c -o CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.s

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.requires:
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.requires

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.provides: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.requires
	$(MAKE) -f src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/build.make src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.provides.build
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.provides

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.provides.build: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o

# Object files for target bot-lcm-logsplice
bot__lcm__logsplice_OBJECTS = \
"CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o"

# External object files for target bot-lcm-logsplice
bot__lcm__logsplice_EXTERNAL_OBJECTS =

bin/bot-lcm-logsplice: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o
bin/bot-lcm-logsplice: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/build.make
bin/bot-lcm-logsplice: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/bot-lcm-logsplice"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bot-lcm-logsplice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/build: bin/bot-lcm-logsplice
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/build

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/requires: src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/lcm-logsplice.c.o.requires
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/requires

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/clean:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice && $(CMAKE_COMMAND) -P CMakeFiles/bot-lcm-logsplice.dir/cmake_clean.cmake
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/clean

src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/depend:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/src/logsplice /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice /home/ra/workspace/code/codebase/libbot2/trunk/bot2-lcm-utils/pod-build/src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/logsplice/CMakeFiles/bot-lcm-logsplice.dir/depend

