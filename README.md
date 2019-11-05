# asdf-registration

Register you directories in the ASDF subsystem. ASDF probably has a better way
to do it, but this one works.

# Install

Run the install script. If it complains, set $CL_INIT and $ASDF_REPO.
```bash
git clone git@github.com:equwal/asdf-registration.git
export CL_INIT="$HOME/.sbclrc" # for some SBCLs only.
export ASDF_REPO="$HOME/common-lisp" # This is where mine is.
sh asdf-registration/install.sh
```
Add as many `asdf-registration:add-repo` lines as you need. The subdirectories will be added to the ASDF registry.
