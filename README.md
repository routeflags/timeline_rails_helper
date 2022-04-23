# TimelineRailsHelper

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) 
[![Gem Version](https://badge.fury.io/rb/timeline_rails_helper.svg)](https://badge.fury.io/rb/jma) 
![](https://ruby-gem-downloads-badge.herokuapp.com/timeline_rails_helper) 
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop-hq/rubocop)
[![CircleCI](https://circleci.com/gh/smapira/timeline_rails_helper/tree/main.svg?style=svg)](https://circleci.com/gh/smapira/timeline_rails_helper/tree/main)

The TimelineRailsHelper provides a timeline_molecules_tag helper to draw a vertical time line usable with vanilla [CSS](https://codepen.io/z-/pen/bwPBjY).

## See It Work

![output](https://user-images.githubusercontent.com/25024587/163623635-e0b8fdab-b8dc-4bad-b795-7631931a8acc.gif)

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
```html
<div id="time_line_rails_helper">
<%= timeline_molecules_tag [{title: (DateTime.now - 3.days).strftime('%Y-%m-%d'),
body: 'This is a test'},
{title: DateTime.now.strftime('%Y-%m-%d'),
body: 'This is a test'}] %>
</div>
```

```ruby
timeline_molecules_tag [{title: (DateTime.now - 3.days).strftime('%Y-%m-%d'),
                         body: 'This is a test'},
                        {title: DateTime.now.strftime('%Y-%m-%d'),
                         body: 'This is a test'}]

#   =>   "<div class="entries">
#           <div class="entry">
#             <div class="title ">2022-04-13</div>
#             <div class="body">This is a test</div>
#           </div>
#           <div class="entry">
#             <div class="title ">2022-04-16</div>
#             <div class="body">This is a test</div>
#           </div>
#         </div>"
```

## Development

### Test

```bash
bin/test
```

## Changelog

TimelineRailsHelper's changelog is available [here](https://github.com/smapira/timeline_rails_helper/blob/main/CHANGELOG.md).

## Contributing

Bug reports and pull requests are welcome on Github at https://github.com/smapira/timeline_rails_helper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/smapira/timeline_rails_helper/src/main/CODE_OF_CONDUCT.md).
License

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the timeline_rails_helper project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/smapira/timeline_rails_helper/blob/main/CODE_OF_CONDUCT.md).

## You may enjoy owning other libraries and my company.

* [routeflagsinc / jma — Bitbucket](https://bitbucket.org/routeflagsinc/jma/src/main/)
    - for the Japan Meteorological Agency (気象庁) for searching new information simplifies.
* [smapira / punch_time — Bitbucket](https://bitbucket.org/smapira/punch_time/src/master/)
    - Work time calculations using punch clock.
* [smapira / rspec-css — Bitbucket](https://bitbucket.org/smapira/rspec-css/src/master/)
    - Record your test suite's computed CSS during future test runs for deterministic and accurate tests.
* [routeflags/timeline_rails_helper: The TimelineRailsHelper provides a timeline_molecules_tag helper to draw a vertical time line usable with vanilla CSS.](https://github.com/routeflags/timeline_rails_helper)
* [smapira/acts_as_tree_diagram: ActsAsTreeDiagram extends ActsAsTree to add simple function for draw tree diagram with html.](https://github.com/smapira/acts_as_tree_diagram)
* [株式会社旗指物](https://blog.routeflags.com/)

## Acknowledgments
- [CSS by Zed Dash at Codepen](https://codepen.io/z-/pen/bwPBjY)
- [rails-timeago](https://github.com/jgraichen/rails-timeago) 
