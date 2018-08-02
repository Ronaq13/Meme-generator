# GenerateMeme
This is a command line application to generate memes.

## Setup

This gem use a file named with `~/.generate_meme.env` for configuration. The file content should look like:

```
key=Place_you_key_here
```

Visit https://market.mashape.com/ and generate the key to place in above file

## Installation

    $ gem install generate_meme

If you are using RVM then do install it in default ruby gem

# Usage

It has three commands

- `with`            : This is used to generate meme
- `list_all_fonts`  : This will print a list of all avaliable fonts
- `list_all_images` : This will print a list of all avaliable images for meme 

## Demo:

- `with`

```
    generate_meme with TOP_TEXT BOTTOM_TEXT --meme="<any-specific-photo-name>"
```
If you don't provide --meme flag it will use the default image. Also it store the image in the same directory in which you executed the command

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ronaq13/generate_meme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GenerateMeme project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/generate_meme/blob/master/CODE_OF_CONDUCT.md).
