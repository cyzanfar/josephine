
[![Gem Version](https://badge.fury.io/rb/josephine.svg)](http://badge.fury.io/rb/josephine)

# Josephine

Ruby gem that calculates number of files, total lines of code, comments, line spacing and average LOC per file extension.
It also excludes files inside directories with "vendor" in their name.

## Installation

Add this line to your aplication's Gemfile

```ruby
 gem 'josephine'
```

then execute
  `$ bundle install`

or install it yourself
 	`$ gem install josephine`

## Usage

In your bash run `josephine <FILE EXTENSION>`

ex: `josephine .rb` => will read all files in your project directory and subdirectory that has the extension `.rb`

You can also pass in an arbitrary number of file extension such that `josephine '.rb' '.css'` for example, will output the number of files, total lines of code, etc. for those specific extensions.

<strong>Output example</strong>

run:  `josephine .rb .css`

output:


				------------------------------
				53 files with .rb extension.
				460 lines of code.
				8.68 LOC/file.
				226 lines of comments.
				157 line spacing.
				2.96 average line space / file.


				------------------------------
				3 files with .js extension.
				111 lines of code.
				37.0 LOC/file.
				0 lines of comments.
				21 line spacing.
				7.0 average line space / file.


For all the files in your project directory run `josephine -all`

##Contribute


Fork it ( https://github.com/[my-github-username]/josephine/fork )
Create your feature branch (`git checkout -b my-new-feature`)
Commit your changes (`git commit -am 'Add some feature'`)
Push to the branch (`git push origin my-new-feature`)
Create a new Pull Request
