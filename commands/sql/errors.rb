module Sql
  class Error < StandardError
  end

  class ParseError < Error
  end

  class UnknownFunctionError < ParseError
    def initialize(function)
      super("No function named #{function}")
    end
  end

  class MalformedTermError < ParseError
    def initialize(term)
      super("Malformed term: #{term}")
    end
  end
end
