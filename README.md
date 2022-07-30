# InnoSetup v6.2.1 with LZMA v22.01 - FIXED (AV detection)

At the outset, according to the license:
https://github.com/Wilenty/InnoSetup-with-latest-LZMA/blob/main/license.txt#L26
```
4. Modified versions in source or binary form must be plainly marked as such, and must not be
misrepresented as being the original software.
```
I admit that it is not the original software (since the LZMA was not updated from 7-zip source for 12 years in the original one).

At the beginning I updated the compressor only, and later I updated the de-compressor also, so I share version v6.2.1 that works with Windows 7 and newer.
These files "islzma.dll", "islzma32.exe" or "islzma64.exe" was detected as a virus after compiled by using VS2015CE:
https://www.virustotal.com/gui/file/9a704b833bda243bf2181ce234b1fa5add16157a2530024bef2934abc39cfcf0

And mixed results when compiled in VS2010:
https://www.virustotal.com/gui/file/6758892ec6275e54962d5a531e455574aee34030ef2edd7f3a35788a807d515a
https://www.virustotal.com/gui/file/c3ab31ec28fdbebb76830833c33c853f0f25bf77bd4485cc1c757943c3ed3e8e
https://www.virustotal.com/gui/file/f6d326b551bc54c4f238abffd9621d625120d894a055592c948df00a042402ef

But, when compiled in VS2005 it's not detected (strange):

![islzma](https://user-images.githubusercontent.com/61757638/181995007-738fc14b-ed59-4e34-946a-319068ad1d27.png)

https://www.virustotal.com/gui/file/366db9cb6d7d67ff8257407d6b8471b8b882a9bac027c37eac898c0bf17ddbb2

![islzma32](https://user-images.githubusercontent.com/61757638/181995019-c0d4702b-7139-4a2b-8d64-42ae37bb4c1a.png)

https://www.virustotal.com/gui/file/472624f34a4107d00ab43e901bc2ba9f3c86bed8e03374ce75c65b30bbbc9ec4

![islzma64](https://user-images.githubusercontent.com/61757638/181995032-8aafa198-3cfd-4e0d-8c8c-cde4de20cf6d.png)

https://www.virustotal.com/gui/file/652ca4b5e85963a6adb4b8230065fa4a637f9dab999376478b19f180a61f52d4

Only the executable files was detected by "SecureAge APEX", because they are *.EXE and not digitally signed in contrary to the original ones:
https://www.virustotal.com/gui/file/0b2e19e473a47e10578b05a2f3b43ad96603f3ee1e397c06a280c3b7458a76e2

**I don't collect Viruses on my own computer, nor on the VM (virtual machine), where I test programs on different OS's and it's architectures!!!**
So, if you don't trust me - please don't download it at all!

Of course it can happens that I can get one (or more) when surfing the internet, but I checked my computer with many online scanners and I don't found any. So, open question to the creators of the AV scanners: where the virus was, in the Visual Studio 2015 Community Edition and (some part of) the Visual Studio 2010? But not in the Visual Studio 2005? It was compiled from exactly the same files, exactly the same computer, the but with different compilers...

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

![ListWindows](https://user-images.githubusercontent.com/61757638/181995056-ff401b31-e1d5-48fd-a727-6d868a851495.png)

---

![Cpu-Info-XP](https://user-images.githubusercontent.com/61757638/181122810-7b71e933-2881-4dc3-80b3-1bd1932c46d9.png)

![CPU-Info-W10x86](https://user-images.githubusercontent.com/61757638/181122845-67827b5a-9eab-4ca2-9587-cdcae72b7d86.png)

---

![ListSrvices-1](https://user-images.githubusercontent.com/61757638/181995076-5f2f4217-9705-4f00-a8fd-c35bde70fccd.png)

![ListSrvices-2](https://user-images.githubusercontent.com/61757638/181995083-1e295320-e7ac-4f59-9aa0-72a394803c55.png)

![ListSrvices-3](https://user-images.githubusercontent.com/61757638/181995100-1d56abc4-5dd6-46e4-a30f-629f1bbc94e6.png)

![ListSrvices-4](https://user-images.githubusercontent.com/61757638/181995112-aefb67ff-eaeb-41c8-bc0a-10ea9e827d6f.png)

---

![IPconfig-XP](https://user-images.githubusercontent.com/61757638/181122889-17e605d6-59ef-4d43-b39b-2fac071b4114.png)

![IPconfig-XP-1](https://user-images.githubusercontent.com/61757638/181122910-5e298bab-3032-46a1-8f55-87fcb07b1d94.png)

![IPconfig-XP-2](https://user-images.githubusercontent.com/61757638/181122929-e92a5698-260f-49b3-bd81-2e5ab0156603.png)

![IPconfig-W10x86](https://user-images.githubusercontent.com/61757638/181123043-45260d69-f4e5-4422-94dc-6f9310ba79d7.png)

![IPconfig-W10x86-1](https://user-images.githubusercontent.com/61757638/181123059-559a0428-7aae-40b1-8e4f-6a785cd16013.png)

![IPconfig-W10x86-2](https://user-images.githubusercontent.com/61757638/181123079-379e144c-be00-4fe5-8fd3-f5fd52dd1451.png)

---

![GetBusType-CD-Atapi](https://user-images.githubusercontent.com/61757638/181123157-2bd7f8aa-9a5a-4fdd-972b-7052a5af4cc5.png)

![GetBusType-CD-Sata](https://user-images.githubusercontent.com/61757638/181123168-f7ce4586-aa0b-4512-925e-69474940dae2.png)

![GetBusType-FIXED](https://user-images.githubusercontent.com/61757638/181123192-4340b5cc-7dee-4736-a6a5-815e5ab6bda1.png)

![GetBusType-REMOTE](https://user-images.githubusercontent.com/61757638/181123204-de0c8765-d4c6-436a-9a4e-a943ce3df8e8.png)

![GetBusType-REMOVABLE-Usb](https://user-images.githubusercontent.com/61757638/181123222-6ea2b183-5170-4b2d-bd27-61a150668b72.png)

![GetBusType-Unknown](https://user-images.githubusercontent.com/61757638/181123238-7a5e9c83-4299-4456-a06e-9637d15138fb.png)
