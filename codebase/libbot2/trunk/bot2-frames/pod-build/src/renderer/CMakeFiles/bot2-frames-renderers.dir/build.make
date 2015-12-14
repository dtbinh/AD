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
CMAKE_SOURCE_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build

# Include any dependencies generated for this target.
include src/renderer/CMakeFiles/bot2-frames-renderers.dir/depend.make

# Include the progress variables for this target.
include src/renderer/CMakeFiles/bot2-frames-renderers.dir/progress.make

# Include the compile flags for this target's objects.
include src/renderer/CMakeFiles/bot2-frames-renderers.dir/flags.make

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o: src/renderer/CMakeFiles/bot2-frames-renderers.dir/flags.make
src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o: ../src/renderer/coord_frames_renderer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/coord_frames_renderer.c

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/coord_frames_renderer.c > CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.i

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/coord_frames_renderer.c -o CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.s

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.requires:
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.requires

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.provides: src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.requires
	$(MAKE) -f src/renderer/CMakeFiles/bot2-frames-renderers.dir/build.make src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.provides.build
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.provides

src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.provides.build: src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o: src/renderer/CMakeFiles/bot2-frames-renderers.dir/flags.make
src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o: ../src/renderer/articulated_body_renderer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/articulated_body_renderer.c

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/articulated_body_renderer.c > CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.i

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/articulated_body_renderer.c -o CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.s

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.requires:
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.requires

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.provides: src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.requires
	$(MAKE) -f src/renderer/CMakeFiles/bot2-frames-renderers.dir/build.make src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.provides.build
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.provides

src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.provides.build: src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o: src/renderer/CMakeFiles/bot2-frames-renderers.dir/flags.make
src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o: ../src/renderer/frame_modifier_renderer.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o   -c /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/frame_modifier_renderer.c

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.i"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/frame_modifier_renderer.c > CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.i

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.s"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer/frame_modifier_renderer.c -o CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.s

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.requires:
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.requires

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.provides: src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.requires
	$(MAKE) -f src/renderer/CMakeFiles/bot2-frames-renderers.dir/build.make src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.provides.build
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.provides

src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.provides.build: src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o

# Object files for target bot2-frames-renderers
bot2__frames__renderers_OBJECTS = \
"CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o" \
"CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o" \
"CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o"

# External object files for target bot2-frames-renderers
bot2__frames__renderers_EXTERNAL_OBJECTS =

lib/libbot2-frames-renderers.so.1: src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o
lib/libbot2-frames-renderers.so.1: src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o
lib/libbot2-frames-renderers.so.1: src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o
lib/libbot2-frames-renderers.so.1: src/renderer/CMakeFiles/bot2-frames-renderers.dir/build.make
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libGL.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libSM.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libICE.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libX11.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libXext.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libGL.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libSM.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libICE.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libX11.so
lib/libbot2-frames-renderers.so.1: /usr/lib/x86_64-linux-gnu/libXext.so
lib/libbot2-frames-renderers.so.1: src/renderer/CMakeFiles/bot2-frames-renderers.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../lib/libbot2-frames-renderers.so"
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bot2-frames-renderers.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/libbot2-frames-renderers.so.1 ../../lib/libbot2-frames-renderers.so.1 ../../lib/libbot2-frames-renderers.so

lib/libbot2-frames-renderers.so: lib/libbot2-frames-renderers.so.1

# Rule to build all files generated by this target.
src/renderer/CMakeFiles/bot2-frames-renderers.dir/build: lib/libbot2-frames-renderers.so
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/build

src/renderer/CMakeFiles/bot2-frames-renderers.dir/requires: src/renderer/CMakeFiles/bot2-frames-renderers.dir/coord_frames_renderer.c.o.requires
src/renderer/CMakeFiles/bot2-frames-renderers.dir/requires: src/renderer/CMakeFiles/bot2-frames-renderers.dir/articulated_body_renderer.c.o.requires
src/renderer/CMakeFiles/bot2-frames-renderers.dir/requires: src/renderer/CMakeFiles/bot2-frames-renderers.dir/frame_modifier_renderer.c.o.requires
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/requires

src/renderer/CMakeFiles/bot2-frames-renderers.dir/clean:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer && $(CMAKE_COMMAND) -P CMakeFiles/bot2-frames-renderers.dir/cmake_clean.cmake
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/clean

src/renderer/CMakeFiles/bot2-frames-renderers.dir/depend:
	cd /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/src/renderer /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer /home/ra/workspace/code/codebase/libbot2/trunk/bot2-frames/pod-build/src/renderer/CMakeFiles/bot2-frames-renderers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/renderer/CMakeFiles/bot2-frames-renderers.dir/depend

