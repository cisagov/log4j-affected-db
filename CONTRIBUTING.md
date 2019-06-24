# Welcome #

We're so glad you're thinking about contributing to this open source
project!  If you're unsure or afraid of anything, just ask or submit
the issue or pull request anyway.  The worst that can happen is that
you'll be politely asked to change something.  We appreciate any sort
of contribution, and don't want a wall of rules to get in the way of
that.

Before contributing, we encourage you to read our CONTRIBUTING policy
(you are here), our [LICENSE](LICENSE), and our [README](README.md),
all of which should be in this repository.

## Issues ##

If you want to report a bug or request a new feature, the most direct
method is to [create an
issue](https://github.com/cisagov/skeleton-generic/issues) in this
repository.  We recommend that you first search through existing
issues (both open and closed) to check if your particular issue has
already been reported.  If it has then you might want to add a comment
to the existing issue.  If it hasn't then feel free to create a new
one.

## Pull requests ##

If you choose to [submit a pull
request](https://github.com/cisagov/skeleton-generic/pulls), you will
notice that our continuous integration (CI) system runs a fairly
extensive set of linters and syntax checkers.  Your pull request may
fail these checks, and that's OK.  If you want you can stop there and
wait for us to make the necessary corrections to ensure your code
passes the CI checks.

If you want to make the changes yourself, or if you want to become a
regular contributor, then you will want to set up
[pre-commit](https://pre-commit.com/) on your local machine.  Once you
do that, the CI checks will run locally before you even write your
commit message.  This speeds up your development cycle considerably.

### Setting up pre-commit ###

There are a few ways to do this, but we prefer to use
[`pyenv`](https://github.com/pyenv/pyenv) and
[`pyenv-virtualenv`](https://github.com/pyenv/pyenv-virtualenv) to
create and manage a Python virtual environment specific to this
project.

#### Installing and using `pyenv` and `pyenv-virtualenv` ####

On the Mac, installation is as simple as `brew install pyenv
pyenv-virtualenv` and adding this to your profile:

```bash
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
```

For Linux (or on the Mac, if you don't want to use `brew`) you can use
[pyenv/pyenv-installer](https://github.com/pyenv/pyenv-installer) to
install the necessary tools.  When you are finished you will need to
add the same two lines above to your profile.

For a list of Python versions that are already installed and ready to
use with `pyenv`, use the command `pyenv versions`.  To see a list of
the Python versions available to be installed and used with `pyenv`
use the command `pyenv install --list`.  You can read more
[here](https://github.com/pyenv/pyenv/blob/master/COMMANDS.md) about
the many things that `pyenv` can do.  See
[here](https://github.com/pyenv/pyenv-virtualenv#usage) for the
additional capabilities that pyenv-virtualenv adds to the `pyenv`
command.

#### Creating the Python virtual environment ####

Once `pyenv` and `pyenv-virtualenv` are installed on your system, you
can create and configure the Python virtual environment with these
commands:

```console
cd skeleton-generic
pyenv virtualenv <python_version_to_use> skeleton-generic
pyenv local skeleton-generic
pip install -r requirements-dev.txt
```

#### Installing the pre-commit hook ####

Now setting up pre-commit is as simple as:

```console
pre-commit install
```

At this point the pre-commit checks will run against any files that
you attempt to commit.  If you want to run the checks against the
entire repo, just execute `pre-commit run --all-files`.

## Public domain ##

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
