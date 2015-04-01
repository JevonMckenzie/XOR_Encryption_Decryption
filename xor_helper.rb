# Author: Jevon Mckenzie

# XorHelper provides an encode method to xor a file with a key
module XorHelper

  # XOR encodes/decodes a document with a key
  # Parameters:
  #   doc: string
  #   key: string
  # Returns: string
  def self.encode(doc, key)


    key = key.chars.rotate!

    doc.chars.map { |c| c.ord ^ key.last.ord
          key = key.rotate! }
    encrypt = doc.chars.map{ |c| (c.ord ^ key.last.ord).chr}.join    
  end


end
