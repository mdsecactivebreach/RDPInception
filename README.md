Disclaimer
==========
As usual, this code and tool should not be used for malicious purposes.

WARNING
=======
This code is weaponised but with no damage. Do not execute if you are not aware of the consequences or what this code does.

Credits
=======
Authored by Vincent Yiu (@vysecurity) of MDSec ActiveBreach

RDPInception
============

A bat script that will backdoor the host that is mounting drives whilst RDPing into an infected machine. This process repeats if a systems administrator is for example: Laptop -> RDP -> RDP -> RDP -> RDP -> Server.

The intention of this script is to allow security testers and red teamers to obtain code execution in the management network or a segregated part of the network where the target machine cannot communicate back out to the privileged network context.

We have found this attack useful in some of our red team and adversary simulation engagements.


Aggressor Script
================
1) Load RDPInception
2) Run rdpinception command
3) Select HTTP, HTTPS or DNS beacon that can egress.

Usage
=====
1) Modify batch file to execute PowerShell stager, EXE or even DLL.
2) Upload to the target, execute.