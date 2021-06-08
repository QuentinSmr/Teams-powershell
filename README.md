![the-box-of-death png](https://user-images.githubusercontent.com/85512155/121222586-f5cda500-c886-11eb-9ae3-430a5b3efc0d.jpg)



## The Box of Death
You do not carry Powershell and Microsoft Teams in your heart? 
I don't either, but it's always nice to be able to automate certain recurring tasks ;-)

This box of death therefore contains small scripts to automate certain tasks in Microsoft Teams.


## Installation

It is very simple, you download the github project, and position yourself in it with the "cd" command from the powershell console.


## AddChannelTeam.ps1

This script browse a "channels-list.csv" file, and created channels in a Teams.

1) Edit the ".\Csv\channels-list.csv" file (for your group id, go to the Admin Azure portal, then to the Azure AD groups section).

2) Run the script :

```
.\AddChannelTeam.ps1
```

3) Enter your administrator account details and the results will be displayed in the console.
