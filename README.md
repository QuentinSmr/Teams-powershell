



## Teams powershell

This project contains small scripts to automate certain tasks in Microsoft Teams.


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
