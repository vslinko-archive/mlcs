class SubstringIterator
  constructor: (@string) ->
    @length = @string.length
    @occurrences = 1

  forEach: (callback) ->
    while @length > 0
      for pos in [0...@occurrences]
        res = callback @string.substr pos, @length
        return if res is false
      @length -= 1
      @occurrences += 1


module.exports = (strings) ->
  return false if strings.length < 2

  strings.sort (a, b) ->
    a.length > b.length

  firstString = strings.shift()
  result = false

  substrings = new SubstringIterator firstString
  substrings.forEach (substring) ->
    for string in strings
      return if string.indexOf(substring) == -1
    result = substring
    return false

  result
