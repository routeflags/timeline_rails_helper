# frozen_string_literal: true

module TimelineRailsHelper
  ##
  # This module expands the helper method into ActiveSupport helper.
  module Helpers
    # Create a timeline_molecules tag usable with vanilla CSS.
    #
    #   timeline_molecules_tag [{title: (DateTime.now - 3.days).strftime('%Y-%m-%d'), body: 'This is a test'}, {title: DateTime.now.strftime('%Y-%m-%d'), body: 'This is a test'}]
    #   =>  "<div id=\"time_line_rails_helper\">
    #         <div class=\"entries\">
    #           <div class=\"entry\">
    #             <div class=\"title \">2022-04-13</div>
    #             <div class=\"body\">This is a test</div>
    #           </div>
    #           <div class=\"entry\">
    #             <div class=\"title \">2022-04-16</div>
    #             <div class=\"body\">This is a test</div>
    #           </div>
    #         </div>
    #       </div>"
    #
    # Available options:
    # [:+condition+]
    #   Add a condition which corresponds to the title, then assign the CSS property.
    #   (default: nil)
    #
    # @param [Array] records
    # @param [String] condition
    # @return [String]
    def timeline_molecules_tag(records, condition = nil)
      return "" if records.empty?

      wrap_container = ->(x) { "<div class=\"entry\">\n#{x}\n</div>" }
      content = records.map(&(wrap_tag(condition) >> wrap_container)).join("\n")
      "<div id=\"time_line_rails_helper\">\n<div class=\"entries\">\n#{content}\n</div>\n</div>"
    end

    private

    # @param [String] title
    # @param [String | nil] condition
    # @return [String]
    def assign_class(title, condition)
      return "" if condition.nil?

      title == condition ? "big" : ""
    end

    # @param [String | nil] condition
    # @return [Proc]
    def wrap_tag(condition)
      lambda { |x|
        "<div class=\"title #{assign_class(x[:title],
                                           condition)}\">#{x[:title]}</div>\n<div class=\"body\">#{x[:body]}</div>"
      }
    end
  end
end
