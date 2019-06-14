class Reconciler
  def reconcile_helper(array_1, array_2)
    nums_1, nums_2 = reconciler(array_1, array_2)
    p "Numbers in array 1 that aren't in array 2:\n#{nums_1.join(" ")}\n\nNumbers in array 2 that aren't in array 1:\n#{nums_2.join(" ")}\n"
  end

  private
  def reconciler(array_1, array_2)
    nums_hash = convert_array_1_to_hash(array_1)
    in_2      = find_elements_in_array_2(nums_hash, array_2)
    in_1      = find_elements_in_array_1(nums_hash)

    [in_1, in_2]
  end

  def convert_array_1_to_hash(array_1)
    nums_hash = Hash.new

    array_1.each do |number|
      nums_hash[number] = false
    end

    nums_hash
  end

  def find_elements_in_array_2(nums_hash, array_2)
    in_2 = []
    array_2.each do |number|
      if nums_hash[number] == false
        nums_hash[number] = true
      else
        in_2 << number
      end
    end
    in_2
  end

  def find_elements_in_array_1(nums_hash)
    in_1 = []
    nums_hash.each do |key, value|
      if !value
        in_1 << key
      end
    end
    in_1
  end
end
