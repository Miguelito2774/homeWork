import HanoiTowers
import Test.HUnit

-- First Case: Hanoi with 3 disks
testCase1 :: Test
testCase1 =
  TestCase $
    assertEqual
      "hanoi 3 A C B"
      [("A", "C"), ("A", "B"), ("C", "B"), ("A", "C"), ("B", "A"), ("B", "C"), ("A", "C")]
      (hanoi 3 "A" "C" "B")

-- Second Case: Hanoi con 4 disks
testCase2 :: Test
testCase2 =
  TestCase $
    assertEqual
      "hanoi 4 A C B"
      [("A", "B"), ("A", "C"), ("B", "C"), ("A", "B"), ("C", "A"), ("C", "B"), ("A", "B"), ("A", "C"), ("B", "C"), ("B", "A"), ("C", "A"), ("B", "C"), ("A", "B"), ("A", "C"), ("B", "C")]
      (hanoi 4 "A" "C" "B")

-- Third Case: Hanoi with 0 disks
testCase3 :: Test
testCase3 =
  TestCase $
    assertEqual
      "hanoi 0 A C B"
      []
      (hanoi 0 "A" "C" "B")

-- Fourth Case: Hanoi with 1 disk
testCase4 :: Test
testCase4 =
  TestCase $
    assertEqual
      "hanoi 1 A C B"
      [("A", "C")]
      (hanoi 1 "A" "C" "B")

-- Fifth Case: Hanoi with 5 disks
testCase5 :: Test
testCase5 =
  TestCase $
    assertEqual
      "hanoi 5 A C B"
      [ ("A", "B"),
        ("A", "C"),
        ("B", "C"),
        ("A", "B"),
        ("C", "A"),
        ("C", "B"),
        ("A", "B"),
        ("A", "C"),
        ("B", "C"),
        ("B", "A"),
        ("C", "A"),
        ("B", "C"),
        ("A", "B"),
        ("A", "C"),
        ("B", "C"),
        ("A", "B"),
        ("C", "A"),
        ("C", "B"),
        ("A", "B"),
        ("C", "A"),
        ("B", "C"),
        ("B", "A"),
        ("C", "A"),
        ("B", "C"),
        ("A", "B"),
        ("A", "C"),
        ("B", "C"),
        ("A", "B"),
        ("C", "A"),
        ("C", "B"),
        ("A", "B"),
        ("A", "C"),
        ("B", "C")
      ]
      (hanoi 5 "A" "C" "B")

main :: IO Counts
main = runTestTT $ TestList [testCase1, testCase2, testCase3, testCase4, testCase5]
