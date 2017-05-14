class EngageSort
  def tddSort(arr)
    # FIRST
    if (arr.length <= 1) then arr
    # SECOND
    # elsif (arr[1] > arr[0]) then
    #   [arr[0], arr[1]]
    # else [arr[1], arr[0]]
    # since second step don't work for the 4th test case.
    else
    # THIRD
      for i in 0..arr.length-2
        if (arr[i] > arr[i+1]) then
          store = arr[i] # preparing to swap arr[i] and arr[i+1] by storing value
          arr[i] = arr[i+1] # executing the swap
          arr[i+1] = store
        end
      end
      arr
      # this does not pass the 5th test case, since this only iterates through the array once, and does not sort entirely.
    # FORTH
      # decided to iterate through the array for each element
      for i in 1..arr.length-1 # second element to last element
        check = arr[i] # set my second element to the checking value
        j = i # setting my current index
        while (j > 0 && arr[j-1] > check) do # iterate through until reaching a value that is less than the checking value
          arr[j] = arr[j-1] # shift value to the right if bigger
          j -= 1 # move to the next value
        end
        arr[j] = check # found the value that is less than the checking value, so insert into position before the value that is less than the checking value
      end
      arr
    end
  end
end
