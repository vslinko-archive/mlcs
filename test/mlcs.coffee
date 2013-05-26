expect = require("chai").expect
mlcs = require ".."


describe "mlcs()", ->
  it "should return the longest common substring", ->
    tests =
      cab: [
        "abacaba"
        "mycabarchive"
        "acabistrue"
      ]
      common: [
        "longest common subsequence"
        "hey, common"
        "common subsequence"
      ]
      subsequence: [
        "longest common subsequence"
        "subsequence common"
        "common subsequence"
      ]

    for sequence, strings of tests
      expect(mlcs(strings)).to.equal sequence

  it "should return false if no common substring found", ->
    tests = [
      [
        "just one string"
      ]
      [
        "123"
        "456"
        "789"
      ]
    ]

    for strings in tests
      expect(mlcs(strings)).to.be.false
