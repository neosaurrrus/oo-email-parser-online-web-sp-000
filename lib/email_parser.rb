# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  @emails = []
  @email_string = ""
  def initialize(email_string)
    @email_string = email_string
  end # of method

  def parse
    commas_out_emails = @email_string.gsub(',', ' ')
    doublespace_out_emails = commas_out_emails.gsub('  ', ' ')
    emails_array = doublespace_out_emails.split(" ");

    puts emails_array
    # short_parsed_emails = parsed_emails.filter do |email|
    #   email.length > 1
    # end
    @emails = emails_array.uniq


  end

end # of class
