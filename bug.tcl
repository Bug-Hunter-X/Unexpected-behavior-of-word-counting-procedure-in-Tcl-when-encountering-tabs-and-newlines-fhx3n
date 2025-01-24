proc count_words {text} {
    set words 0
    foreach word [split $text] {
        if {[string length $word] > 0} {
            incr words
        }
    }
    return $words
}

puts [count_words "This is a test"] ; # Output: 4
puts [count_words "This is a test with leading and trailing spaces"] ; # Output: 9
puts [count_words ""] ; # Output: 0
puts [count_words "    "] ; # Output: 0
puts [count_words {This is a test with multiple \n newlines}] ; #Output: 9

#Unexpected behavior
puts [count_words {This is a test with \t tabs}] ; # Output: 5
puts [count_words {This is a test with multiple \t tabs\t}] ; # Output: 6