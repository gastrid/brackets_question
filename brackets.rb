
    # testing whether it would work using numbers rather than brackets


def match(brackets)

  return "the brackets are uneven" if brackets.length.even? == false

   closed_brackets = 0

  brackets.each_with_index do |bracket, index|
    checked_position = index + 1

    closed_brackets += 1 if brackets[checked_position] == brackets[index]

    end_check = index.even? ? brackets.length - 1 : brackets.length - 2

    while checked_position + 2 <= end_check
      checked_position += 2
      closed_brackets += 1 if brackets[checked_position] == brackets[index]
    end
  end

  if closed_brackets == brackets.length / 2
    p "there are #{closed_brackets} sets of closed brackets - they all close"
  else
    p "there are #{closed_brackets} sets of closed brackets they do not all close"
  end
end


  # brackets = [4, 2, 5, 5, 3, 3, 2, 4] # should pass test

  brackets = [6, 1, 1, 2, 3, 2, 3, 4, 4, 6] # should fail test

  # brackets = [1, 1] #should pass

  match(brackets)
