RSpec::Matchers.define :be_contained_in do |expected|
  match do |actual|
    @query = ParserSupport.parser.find_by_selector(actual, expected)
    !@query.empty?
  end

  failure_message_for_should do |actual|
      %{expected selector #{actual} to be contained in #{expected}}
  end
end

