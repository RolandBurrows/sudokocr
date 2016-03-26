## sudokocr
Ruby optical character recognition Sudoku puzzle hyper-extractor



#### The Goal
* Extracts the [Sudoku](https://en.wikipedia.org/wiki/Sudoku) puzzle data from a given image file.

#### Execution
To read an image:
```
$ ruby sudokocr.rb <path_to_image_file>
```
To run the specs:
```
$ rspec
```

#### Results
If the OCR's confidence is higher than the allowed threshold, the puzzle data will be returned on separate lines:
```
  -28--7---
  -16-83-7-
  ----2-851
  13729----
  ---73----
  ----463-7
  29--7----
  ---86-14-
  ---3--7--
```

#### Application Milestones
Execution:
[X] Set up Tesseract as OCR engine
[X] Specs!

Input:
[X] ARGV as part of main ruby script

Implementation:
[ ] Gem

Stretch Goals:
* Coming Soon
