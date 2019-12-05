class Member < ApplicationRecord
  enum exemption: {not_exempt: 0, disabled: 1, absent: 2, other: 99}

  def exempt?
    exemption != 'not_exempt'
  end

  def full_name
    [first_name, last_name].join(' ')
  end
end
