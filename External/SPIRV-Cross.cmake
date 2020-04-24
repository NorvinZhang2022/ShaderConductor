# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

set(SPIRV_Cross_REV "1ad1662a2b4a41ed0076750b0cc2732cb89a19e8")

UpdateExternalLib("SPIRV-Cross" "https://github.com/KhronosGroup/SPIRV-Cross.git" ${SPIRV_Cross_REV})

add_subdirectory(SPIRV-Cross EXCLUDE_FROM_ALL)
foreach(target
    "spirv-cross" "spirv-cross-core" "spirv-cross-cpp" "spirv-cross-glsl" "spirv-cross-hlsl" "spirv-cross-msl" "spirv-cross-reflect"
    "spirv-cross-util")
    set_target_properties(${target} PROPERTIES FOLDER "External/SPIRV-Cross")
endforeach()

foreach(target
    "SPIRV-Tools" "SPIRV-Tools-opt")
    set_target_properties(${target} PROPERTIES FOLDER "External/SPIRV-Tools/SPIRV-Tools libraries")
endforeach()