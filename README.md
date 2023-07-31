# Template Repository for Public Documentation

See [docs as HTML website](https://wri.github.io/PUT_YOUR_REPO_NAME_HERE).


## Purpose
This repository is a template for documentation that can be publicly hosted on GitHub pages.
It uses [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) as the documentation framework.
New documentation sites that start from this template repo will be set up with a consistent workflow based on GitHub Actions.
This will enable you to write markdown files, whether through a web interface or on your local machine, and changes that are pushed to the repository will be automatically published.


## Usage
You should not modify the template repository directly if you are trying to make a new documentation site.
Instead, create a new GitHub repository under the `wri/` namespace and use this repository as a template.

Be aware that this is intended for documentation sites that can be publicly accessed and there are no authorization mechanisms to limit read access to the website.


### Acquire background knowledge

- familiarize yourself with the [MkDocs](https://www.mkdocs.org/getting-started/) system
- familiarize yourself with the [Material for MkDocs site](https://squidfunk.github.io/mkdocs-material/)


### Setup local repository

- run `make venv` to install dependencies and `make serve` to see the initial site at `http://127.0.0.1:8000`


### Setup GitHub secrets
To enable the automatic building and hosting of the website through GitHub you will need to create a [Personal Access Token](https://github.com/settings/tokens) on your account.

Ensure the following (and only the following) are set for the token:

- it has a name ("note") that is descriptive for this repository, for example `wri_docs_build_YOUR_PROJECT_NAME`
- it has an expiration date - you can set this up to a year in advance, but you should probably not use a token that never expires, it is just good security practice
- it has full repository permissions - select the `repo` check box and nothing else

Once generated you will only have one chance to copy your token.
Next, go to your documentation repository's Secrets page (`Settings > Secrets`).
Add a new repository secret named `GH_TOKEN` and paste your newly created Personal Access Token into the value box.

**DO NOT KEEP A COPY OF THIS TOKEN EXCEPT AS A GITHUB REPOSITORY SECRET.**

**DO NOT STORE THE TOKEN IN A FILE ON YOUR COMPUTER OR IN AN EMAIL.**

**DO NOT USE THIS TOKEN FOR ANY OTHER PURPOSE.**


### Enable GitHub Pages

- go to the "Pages" setting (`Settings > Pages`) and select the `gh-pages` branch, ensure it is served from `/ (root)`


At this point your repository is set up and you can start writing and pushing documentation!
It may take a few minutes for GitHub Pages to be activated and you can first view the documentation online.


### Customize your repository

- modify this `README.md` file to describe your documentation project
- modify the `mkdocs.yml` file to configure your project
- add content to the `docs/` directory and reference that content in the `pages` section of `mkdocs.yml`
- push changes to `master`, whether directly or as part of a Pull Request workflow


## Maintenance
This template repository is maintained by [`loganbyers`](https://github.com/loganbyers).

This repository uses Python 3.6 by default, but that can be changed to later versions without much difficulty.
To do so you would edit the `venv` target in the `Makefile` and also the Python versions in `.github/workflows/convert-md-html.yml`.

You should keep your dependencies pinned in `requirements.txt`, but these can also be upgraded if you want to test new functionality.


## Quickstart (feel free to keep in your repository's README)
This repository holds markdown files that are transformed into HTML files and served as a static website with GitHub Pages.
The content for the static website is maintained in a parallel branch of this repository (`gh-pages`) by a CI workflow with GitHub Actions.
The `gh-pages` branch should never be modified except by the CI process.
Each successful build based on `master` obliterates the `gh-pages` so if you need to arbitrarily look at old documentation the single source of truth remains the markdown files.

The documentation system can be mostly controlled with `make`:

```bash
git clone https://github.com/wri/PUT_YOUR_REPO_NAME_HERE
cd PUT_YOUR_REPO_NAME_HERE
make venv  # uses `virtualenv`, modify Makefile if you use different tool
make serve  # launches webserver at localhost:8000
```

A full, non-`make` based workflow for editing content is as follows:
```bash
# SETUP PROJECT ENVIRONMENT
# clone repo
git clone https://github.com/wri/PUT_YOUR_REPO_NAME_HERE
# go to local repo directory
cd PUT_YOUR_REPO_NAME_HERE

# install virtual environment with your tool of choice
virtualenv --python=python3.6 venv
# activate virtual environment
. venv/bin/activate
# install dependencies
pip install -r requirements.txt

# VIEW / MODIFY THE DOCS
# run the local dev server, which has live reloading of changes
mkdocs serve
# (point browser to localhost:8000)
# ...
# (edit a file: docs/example/markdown-file.md)
# ....

# commit the changes
# (optional branch-based workflow)
# git checkout -b example-branch-name
# git add docs/example/markdown-file.md
# git commit
# git push -u origin example-branch-name
# (open PR on GitHub....)

# push to master (nonbranching workflow)
# (pushing to master is fine right now)
git push -u origin master
# (markdown -> HTML conversion being performed within GitHub)
```


### Editing rules

- Never push directly to `gh-pages` branch!

