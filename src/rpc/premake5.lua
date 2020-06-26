project "RPC"
    language "C++"
    targetname(targetName)
    
    kind "SharedLib"
    
    defines
    {
        "DISCORD_BUILDING_SDK"
    }
    
    includedirs
    {
        ".",
        "../../thirdparty/rapidjson-last/include"
    }

    vpaths
    {
        ["Resources/*"] = {"**.rc"},
        ["Headers/**"] = "**.h",
        ["Sources/**"] = "**.cpp",
        ["*"] = "premake5.lua"
    }

    files
    {
        "premake5.lua",
        "**.h",
        "**.cpp",
        "**.rc"
    }
    
    links
    {
        
    }

    DeclareCompilationFlags()
