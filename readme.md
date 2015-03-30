
[![Gem Version](https://badge.fury.io/rb/josephine.svg)](http://badge.fury.io/rb/josephine)

# Josephine

Ruby gem that calculates number of files, total lines of code, comments, line spacing and average LOC per file extension.
It also excludes files inside directories with "vendor" in their name.

## Installation

 `gem install josephine`

 then `bundle install`

## Usage

In your bash run `josephine '<FILE EXTENSION>'`

ex: `josephine '.rb'` => will read all files in your project directory and subdirectory that has the extension `.rb`

You can also pass in an arbitrary number of file extension such that `josephine '.rb' '.css'` for example, will output the number of files, total lines of code, etc. for those specific extensions.

<strong>Output example</strong>

run:  `josephine '.rb' '.css'`

output:


					------------------------------
					39 files with .rb extension.
					434 lines of code.
					11.13 LOC/file.
					198 lines of comments.
					125 line spacing.
					 #<Josephine:0x007fafd3dba670>

					------------------------------
					1 files with .css extension.
					13 lines of code.
					13.0 LOC/file.
					0 lines of comments.
					0 line spacing.
					 #<Josephine:0x007fafd3ca3c28>

##Todo

--Support multitude file extension.

##Contribute

Fork this repository, clone your fork, create a new branch and start contributing!
