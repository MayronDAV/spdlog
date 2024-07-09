project "fmt"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "on"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/Thirdparty/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "/Thirdparty/%{prj.name}")

    defines "SPDLOG_HEADER_ONLY"

	files
	{
		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"