class Reconciler
  def reconcile_helper_1(array_1, array_2)
    nums_1, nums_2 = reconciler(array_1, array_2)
    "Numbers in array 1 that aren't in array 2:\n#{nums_1.join(" ")}\n\nNumbers in array 2 that aren't in array 1:\n#{nums_2.join(" ")}\n"
  end

  def reconcile_helper_2(arr1, arr2)
    not_in_arr2 = []
    not_in_arr1 = []

    arr1.each do |num|
      not_in_arr2 << num unless arr2.include?(num)
    end

    arr2.each do |num|
      not_in_arr1 << num unless arr1.include?(num)
    end

    "Numbers in array 1 that aren't in array 2:\n" + not_in_arr2.join(" ") + "\nNumber in array 2 that aren't in array 1:\n" + not_in_arr1.join(" ")
  end

  def reconcile_helper_3(arr1, arr2)
    unique_in_first  = find_unique(arr1, arr2)
    unique_in_second = find_unique(arr2, arr1)

    print_results(unique_in_first, unique_in_second)
  end

  def find_unique(arr1, arr2)
    unique_members = []

    arr1.each do |num1|
      unique = true

      arr2.each do |num2|
        break unique = false if num1 == num2
      end

      unique_members << num1 if unique
    end

    unique_members
  end

  def print_results(unique_in_first, unique_in_second)
    "Numbers in array 1 that aren't in array 2:\n#{unique_in_first}\n" + "Numbers in array 2 that aren't in array 1:\n#{unique_in_second}"
  end

  def reconcile_helper_4(array_1, array_2)
    nums_1, nums_2 = reconciler_old(array_1, array_2)
    "Numbers in array 1 that aren't in array 2:\n#{nums_1.join(" ")}\n\nNumbers in array 2 that aren't in array 1:\n#{nums_2.join(" ")}\n"
  end

  def reconciler_old(array_1, array_2)
    nums_1 = array_subtraction(array_1, array_2)
    nums_2 = array_subtraction(array_2, array_1)

    [nums_1, nums_2]
  end

  def array_subtraction(array_1, array_2)
    nums_1 = []

    array_1.each do |number_1|
      in_2   = false
      array_2.each do |number_2|
        if number_1 == number_2
          in_2 = true
        end
      end

      if in_2 == false
        nums_1 << number_1
      end
    end
    nums_1
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
