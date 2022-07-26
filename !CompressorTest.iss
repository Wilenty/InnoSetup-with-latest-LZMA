[Setup]
AppName=CompressorTest
AppVersion=1.0
AppPublisher=Wilenty
AppPublisherURL=https://wilenty.wixsite.com/links
CreateAppDir=no
;DefaultDirName={pf}\CompressorTest
Uninstallable=no
OutputBaseFilename=CompressorTest

PrivilegesRequired=lowest
; LZMA/LZMA2 block size up to 4GB (4GB block size will use about 10GB of RAM for compression and about 1GB of RAM for decompression)
LZMABlockSize=4194304
