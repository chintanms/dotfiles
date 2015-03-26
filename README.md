Placing my Bash set-up files on GitHub.

### Install

Say you sync down all these files in ~ directory,
then you need to add following code to your .profile (or .bashrc)
to ensure everything gets picked-up

```bash
for file in ~/dotfiles/{shopts,general,aliases,custom}.bash; do
	if [ -f "${file}" ] ; then
		echo "Sourcing ${file}"
		source "${file}"
	fi
done
```
