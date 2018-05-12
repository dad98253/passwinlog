
; // passwin.mc 

; // This is the header section.


SeverityNames=(Success=0x0:STATUS_SEVERITY_SUCCESS
               Informational=0x1:STATUS_SEVERITY_INFORMATIONAL
               Warning=0x2:STATUS_SEVERITY_WARNING
               Error=0x3:STATUS_SEVERITY_ERROR
              )


FacilityNames=(System=0x0:FACILITY_SYSTEM
               Runtime=0x2:FACILITY_RUNTIME
               Stubs=0x3:FACILITY_STUBS
               Io=0x4:FACILITY_IO_ERROR_CODE
              )

LanguageNames=(English=0x409:MSG00409)


; // The following are the categories of events.

MessageIdTypedef=WORD

MessageId=0x1
SymbolicName=NETWORK_CATEGORY
Language=English
Network Events
.

MessageId=0x2
SymbolicName=DATABASE_CATEGORY
Language=English
Database Events
.

MessageId=0x3
SymbolicName=UI_CATEGORY
Language=English
UI Events
.


; // The following are the message definitions.

MessageIdTypedef=DWORD

MessageId=0x100
Severity=Informational
Facility=Runtime
SymbolicName=MSG_PROGRAM_START
Language=English
Secret Box program start.
.


MessageId=0x101
Severity=Informational
Facility=Runtime
SymbolicName=MSG_PROGRAM_STOP
Language=English
Secret Box program stop.
.

MessageId=0x102
Severity=Informational
Facility=System
SymbolicName=MSG_SIGINT
Language=English
SIGINT detected
.

MessageId=0x103
Severity=Warning
Facility=System
SymbolicName=MSG_ENTROPY
Language=English
Low entropy detected on /dev/random. 
.


; // The following are the parameter strings */



