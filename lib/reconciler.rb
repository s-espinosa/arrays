class Reconciler
  def reconcile_helper(array_1, array_2)
    nums_1, nums_2 = reconciler(array_1, array_2)
    p "Numbers in array 1 that aren't in array 2:\n#{nums_1.join(" ")}\n\nNumbers in array 2 that aren't in array 1:\n#{nums_2.join(" ")}\n"
  end

  private
  def reconciler(array_1, array_2)
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
end
