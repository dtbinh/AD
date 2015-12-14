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
CMAKE_SOURCE_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build

# Include any dependencies generated for this target.
include src/param_server/CMakeFiles/bot-param-tool.dir/depend.make

# Include the progress variables for this target.
include src/param_server/CMakeFiles/bot-param-tool.dir/progress.make

# Include the compile flags for this target's objects.
include src/param_server/CMakeFiles/bot-param-tool.dir/flags.make

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o: src/param_server/CMakeFiles/bot-param-tool.dir/flags.make
src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o: ../src/param_server/param_tool.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot-param-tool.dir/param_tool.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/src/param_server/param_tool.c

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot-param-tool.dir/param_tool.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/src/param_server/param_tool.c > CMakeFiles/bot-param-tool.dir/param_tool.c.i

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot-param-tool.dir/param_tool.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/src/param_server/param_tool.c -o CMakeFiles/bot-param-tool.dir/param_tool.c.s

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.requires:
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.requires

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.provides: src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.requires
	$(MAKE) -f src/param_server/CMakeFiles/bot-param-tool.dir/build.make src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.provides.build
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.provides

src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.provides.build: src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o

# Object files for target bot-param-tool
bot__param__tool_OBJECTS = \
"CMakeFiles/bot-param-tool.dir/param_tool.c.o"

# External object files for target bot-param-tool
bot__param__tool_EXTERNAL_OBJECTS =

bin/bot-param-tool: src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o
bin/bot-param-tool: src/param_server/CMakeFiles/bot-param-tool.dir/build.make
bin/bot-param-tool: src/param_server/CMakeFiles/bot-param-tool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../bin/bot-param-tool"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bot-param-tool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/param_server/CMakeFiles/bot-param-tool.dir/build: bin/bot-param-tool
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/build

src/param_server/CMakeFiles/bot-param-tool.dir/requires: src/param_server/CMakeFiles/bot-param-tool.dir/param_tool.c.o.requires
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/requires

src/param_server/CMakeFiles/bot-param-tool.dir/clean:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server && $(CMAKE_COMMAND) -P CMakeFiles/bot-param-tool.dir/cmake_clean.cmake
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/clean

src/param_server/CMakeFiles/bot-param-tool.dir/depend:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/src/param_server /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server /home/ra/workspace/code/codebase/libbot2/trunk/bot2-param/pod-build/src/param_server/CMakeFiles/bot-param-tool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/param_server/CMakeFiles/bot-param-tool.dir/depend

