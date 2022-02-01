# School Organization

This script automatically creates all the folders required for a good organization of school subjects. I usually do this every semester, so I thought it'd be faster to have a script to do it for me.

* **Language**:
  * English
  * Portuguese
* **Latest version**: 1.0.0

## How to execute?
```
bash schoolOrganization.sh [__OPTIONS__] [SUBJECTS...]
```
### Options
```
NAME DESC
---------
-p   creates the folders in portuguese, instead of the default english.
```
### Subjects
Each subject that needs automatic organization.

## Examples:
```
bash schoolOrganization.sh english math science
```
```
bash schoolOrganization.sh -p a b c
```