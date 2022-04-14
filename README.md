# TimelineRailsHelper

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 
[![Gem Version](https://badge.fury.io/rb/timeline_rails_helper.svg)](https://badge.fury.io/rb/jma) 
![](https://ruby-gem-downloads-badge.herokuapp.com/timeline_rails_helper) 
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)
[![CircleCI](https://circleci.com/bb/smapira/timeline_rails_helper.svg?style=svg)](https://circleci.com/bb/smapira/punch_time)

The TimelineRailsHelper provides a timeline_molecules_tag helper to draw a vertical time line usable with vanilla [CSS](https://codepen.io/z-/pen/bwPBjY).

## See It Work

## Installation

### Prerequisites
- Ruby >= 2.6

### Stacks
- [ActionView](https://api.rubyonrails.org/classes/ActionView.html)
- [minitest](https://github.com/seattlerb/minitest)
- [RuboCop](https://github.com/rubocop/rubocop)

Add this line to your application's Gemfile:

```ruby
gem "timeline_rails_helper"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install timeline_rails_helper
```

## Usage

### QQTW (Quickest Quick-start in The West)

```ruby
timeline_molecules_tag [{title: (DateTime.now - 3.days).strftime('%Y-%m-%d'),
                         body: 'This is a test'},
                        {title: DateTime.now.strftime('%Y-%m-%d'),
                         body: 'This is a test'}]

#   =>  "<div id="time_line_rails_helper">
#         <div class="entries">
#           <div class="entry">
#             <div class="title ">2022-04-13</div>
#             <div class="body">This is a test</div>
#           </div>
#           <div class="entry">
#             <div class="title ">2022-04-16</div>
#             <div class="body">This is a test</div>
#           </div>
#         </div>
#       </div>"
```

## Development

### Test

```bash
bin/test
```

## Changelog

TimelineRailsHelper's changelog is available [here](https://github.com/smapira/timeline_rails_helper/blob/main/CHANGELOG.md.md).

## Contributing

Bug reports and pull requests are welcome on Github at https://github.com/smapira/timeline_rails_helper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/smapira/timeline_rails_helper/src/main/CODE_OF_CONDUCT.md).
License

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the timeline_rails_helper project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/smapira/timeline_rails_helper/blob/main/CODE_OF_CONDUCT.md).

## Acknowledgments
- [CSS by Zed Dash at Codepen](https://codepen.io/z-/pen/bwPBjY)
- [rails-timeago](https://github.com/jgraichen/rails-timeago) 