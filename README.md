# passwinlog

The message text (.mc) file included in this repository is used to create the event manager dll for the logging function of the windows version of passwin.



To compile it:

The .mc file is compiled into a .res file which is linked into a .dll:

If you are using Visual Studio, open a "Developer Command Prompt" window (under Visyual Studio in your start menu).
If you are using the Windows SDK with some other IDE, you will need to set your path to the appropriate tools folder.

To compile the message text file, use the following command:

 mc -U passwinlog.mc

To compile the resources that the message compiler generated, use the following command:

rc passwinlog.rc

To create the resource-only DLL that contains the message table string resources, use the following command (you can run the command from a Visual Studio Command Prompt):

   link -dll -noentry passwinlog.res

Notes:
1) The mc step creates a passwinlog.h that will be needed when compiling passwin.
2) Be sure to include the -noentry option on the link command!
3) The passwinlog.dll file needs to be registered so that windows will know where to find it.
4) The passwinlog.reg file that I have included here is an example only. You will need to modify it to correspond to the location where you install passwinlog.dll.
