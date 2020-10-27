# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    
    def parse
        # new = @email_addresses.split((/[\s,]+/)).uniq
        new = @email_addresses.gsub(",", " ").split(" ").uniq

        new.map do |ele|
            ele
        end
    end
end