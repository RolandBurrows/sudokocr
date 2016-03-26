## sudokocr
Ruby optical character recognition Sudoku puzzle hyper-extractor

[![Build Status](https://semaphoreci.com/api/v1/rolandburrows/sudokocr/branches/master/shields_badge.svg)](https://semaphoreci.com/rolandburrows/sudokocr)

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
- [X] Set up Tesseract as OCR engine
- [X] Specs!

Input:
- [X] ARGV as part of main ruby script

Implementation:
- [ ] Gem

Stretch Goals:
* Coming Soon

#### Citations
* [Ruby-based OCR on OSX in less than a minute](http://andredieb.com/ruby-tesseract-ocr.html)
* [OCR using Tesseract on Ubuntu 14.04](http://hanzratech.in/2015/01/16/ocr-using-tesseract-on-ubuntu-14-04.html)
* [OCR Tesseract – Text Recognition in Ubuntu 14.04](https://ubuntu.flowconsult.at/linux/ocr-tesseract-text-recognition-ubuntu-14-04/)
* [Compiling Tesseract-ocr](https://github.com/tesseract-ocr/tesseract/wiki/Compiling)
