# passwinlog

This is the message text (.mc) file used to create the event manager dll for the logging function of the windows version of passwin.



To compile it:

The .mc file is compiled into a .res file which is linked into a .dll:

To compile the message text file, use the following command:

 mc -U passwinlog.mc

To compile the resources that the message compiler generated, use the following command:

rc passwinlog.rc

To create the resource-only DLL that contains the message table string resources, use the following command (you can run the command from a Visual Studio Command Prompt):

   link -dll -noentry passwinlog.res

Notes:
1) The mc step creates a passwinlog.h that will be needed when compiling passwin. In addition to the passwinlog.rc, it also creates the MSG00409.bin file which the passwinlog.rc regerences.
2) Be sure to include the -noentry option on the link command!
