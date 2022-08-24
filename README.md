# A3_Freefall_Fix
This is a simple script that fixes the freefall (halo) pose in Arma 3 when the character is above +100m

# Requirements
Arma 3 v2.10+

# How to use
Copy the `LEO_FreefallFix` folder to your mission folder.
You can change the minimum freefall height in the `fn_init.sqf` file.

Choose one of the steps below, depending on which one is applicable to your mission.

1. If you don't have a `description.ext` file in your mission, download the `description.ext` file too and put it in your mission folder.
2. If you have a `description.ext` and the file doesn't contain a `CfgFunctions` class, simply copy the contents of the `description.ext` file in this repository and paste it anywhere in your own `description.ext`
3. If you have a `description.ext` and the file already contains a `CfgFunctions` class, add the following class to it:
```cpp
class LEO_FFF {
	class Fnc {
		class init {
			preInit = 1;
			file = "LEO_FreeFallFix\fn_init.sqf";
		};
		class perFrameEH {
			file = "LEO_FreeFallFix\fn_perFrameEH.sqf";
		};
	};
};
```

# Mod Version
The mod version is available on [Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=2853202785).
