# InnoSetup v6.2.1 with LZMA v22.01

At the outset, according to the license:
https://github.com/Wilenty/InnoSetup-with-latest-LZMA/blob/main/license.txt#L26
```
4. Modified versions in source or binary form must be plainly marked as such, and must not be
misrepresented as being the original software.
```
I admit that it is not the original software (since the LZMA was not updated from 7-zip source for 12 years in the original one).

At the beginning I updated the compressor only, and later I updated the de-compressor also, so I share version v6.2.1 that works with Windows 7 and newer.
These files "islzma.dll", "islzma32.exe" or "islzma64.exe" can be detected as a virus:
https://www.virustotal.com/gui/file/9a704b833bda243bf2181ce234b1fa5add16157a2530024bef2934abc39cfcf0
because they are not digitally signed in contrary to the original ones:
https://www.virustotal.com/gui/file/0b2e19e473a47e10578b05a2f3b43ad96603f3ee1e397c06a280c3b7458a76e2
even if they were compiled in the same VS2015CE as 7-zip:
https://github.com/Wilenty/7-Zip-X64-X86-with-Extracting-NSIS-script
So, if you don't trust me - please don't download it at all!

Differences in the modified InnoSetup with LZMA v22.01 to the original one with LZMA from 2010:
1) changed maximum LZMA block size from 256MB to 4GB for separate threads. With 4GB block size and separate threads it will use about 12GB of RAM for LZMA2 and about 10GB of RAM for LZMA. Single thread not changed and limited to the 32-bit app as described in the help file.
2) about one minute faster compression time in the highest compression levels
3) a bit smaller result (installer) file in the highest compression levels
4) a bit faster extraction time

It was compiled by using:

![Delphi](https://user-images.githubusercontent.com/61757638/181103967-fae5093c-d70f-4816-9a0d-3dd5eaadd35d.png)

If you need, or you will need professional help in the InnoSetup script/code, please donate me, and I will try to help you as much as I can. Sorry, but I don't help on GitHub, or other forums...

By the way,
I am preparing to sell my works done in pure InnoSetup code without any external DLL's via donations. I will show you some of them on the screenshots, what I currently did. I hope that I will finish the examples to end of vacations, but I not promises it...
These examples are protected from unpacking, so, sometimes they are detected as dangerous/malicious. Anyway you can test them in the VM (virtual machine).

![Cpu-Info-XP](https://user-images.githubusercontent.com/61757638/181122810-7b71e933-2881-4dc3-80b3-1bd1932c46d9.png)

![CPU-Info-W10x86](https://user-images.githubusercontent.com/61757638/181122845-67827b5a-9eab-4ca2-9587-cdcae72b7d86.png)


![IPconfig-XP](https://user-images.githubusercontent.com/61757638/181122889-17e605d6-59ef-4d43-b39b-2fac071b4114.png)

![IPconfig-XP-1](https://user-images.githubusercontent.com/61757638/181122910-5e298bab-3032-46a1-8f55-87fcb07b1d94.png)

![IPconfig-XP-2](https://user-images.githubusercontent.com/61757638/181122929-e92a5698-260f-49b3-bd81-2e5ab0156603.png)

![IPconfig-W10x86](https://user-images.githubusercontent.com/61757638/181123043-45260d69-f4e5-4422-94dc-6f9310ba79d7.png)

![IPconfig-W10x86-1](https://user-images.githubusercontent.com/61757638/181123059-559a0428-7aae-40b1-8e4f-6a785cd16013.png)

![IPconfig-W10x86-2](https://user-images.githubusercontent.com/61757638/181123079-379e144c-be00-4fe5-8fd3-f5fd52dd1451.png)


![GetBusType-CD-Atapi](https://user-images.githubusercontent.com/61757638/181123157-2bd7f8aa-9a5a-4fdd-972b-7052a5af4cc5.png)

![GetBusType-CD-Sata](https://user-images.githubusercontent.com/61757638/181123168-f7ce4586-aa0b-4512-925e-69474940dae2.png)

![GetBusType-FIXED](https://user-images.githubusercontent.com/61757638/181123192-4340b5cc-7dee-4736-a6a5-815e5ab6bda1.png)

![GetBusType-REMOTE](https://user-images.githubusercontent.com/61757638/181123204-de0c8765-d4c6-436a-9a4e-a943ce3df8e8.png)

![GetBusType-REMOVABLE-Usb](https://user-images.githubusercontent.com/61757638/181123222-6ea2b183-5170-4b2d-bd27-61a150668b72.png)

![GetBusType-Unknown](https://user-images.githubusercontent.com/61757638/181123238-7a5e9c83-4299-4456-a06e-9637d15138fb.png)
