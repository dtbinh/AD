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
CMAKE_SOURCE_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build

# Include any dependencies generated for this target.
include src/testers/CMakeFiles/gl_image_area_tester.dir/depend.make

# Include the progress variables for this target.
include src/testers/CMakeFiles/gl_image_area_tester.dir/progress.make

# Include the compile flags for this target's objects.
include src/testers/CMakeFiles/gl_image_area_tester.dir/flags.make

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o: src/testers/CMakeFiles/gl_image_area_tester.dir/flags.make
src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o: ../src/testers/gl_image_area_tester.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/src/testers/gl_image_area_tester.c

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/src/testers/gl_image_area_tester.c > CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.i

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/src/testers/gl_image_area_tester.c -o CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.s

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.requires:
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.requires

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.provides: src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.requires
	$(MAKE) -f src/testers/CMakeFiles/gl_image_area_tester.dir/build.make src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.provides.build
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.provides

src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.provides.build: src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o

# Object files for target gl_image_area_tester
gl_image_area_tester_OBJECTS = \
"CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o"

# External object files for target gl_image_area_tester
gl_image_area_tester_EXTERNAL_OBJECTS =

bin/gl_image_area_tester: src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o
bin/gl_image_area_tester: src/testers/CMakeFiles/gl_image_area_tester.dir/build.make
bin/gl_image_area_tester: src/testers/CMakeFiles/gl_image_area_tester.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/gl_image_area_tester"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gl_image_area_tester.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/testers/CMakeFiles/gl_image_area_tester.dir/build: bin/gl_image_area_tester
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/build

src/testers/CMakeFiles/gl_image_area_tester.dir/requires: src/testers/CMakeFiles/gl_image_area_tester.dir/gl_image_area_tester.c.o.requires
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/requires

src/testers/CMakeFiles/gl_image_area_tester.dir/clean:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers && $(CMAKE_COMMAND) -P CMakeFiles/gl_image_area_tester.dir/cmake_clean.cmake
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/clean

src/testers/CMakeFiles/gl_image_area_tester.dir/depend:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/src/testers /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers /home/ra/workspace/code/codebase/libbot2/trunk/bot2-vis/pod-build/src/testers/CMakeFiles/gl_image_area_tester.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/testers/CMakeFiles/gl_image_area_tester.dir/depend

