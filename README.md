# XOR Defender

This is a command line ruby application that can either encrypt or decrypt a text file, given a key.

Important Files:
- `xor_defend.rb`: a command line application that encodes/decodes a file given a key and prints the results to STDOUT
  - uses `xor_helper.rb` for encoding/decoding logic
  - do NOT make any edits to this file
- `xor_helper.rb`: this contains the actual logic for encoding/decoding
  - you need to add code in this file to make everything work
- `test.txt`: a sample test file for input (you may try your own)

## Testing
To check if your solution works, you can try to encode the `test.txt` file to another output file, and then encode that one more time to see if you get the same contents as `test.txt.

You should be able to test it as follows from the command line:
- See the contents of the test file

  `$ cat test.txt`

- Encode the test file and redirect output to another file

  `$ ruby xor_defend.rb test.txt mykey > out.txt`

- See contents of output file

  `$ cat out.txt`

- Re-encode output file to see if screen output matches orignal test file

  `$ ruby xor_defend.rb out.txt mykey`

