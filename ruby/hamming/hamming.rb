class Hamming
  def self.compute(strain1, strain2)
    strain_size = [strain1.length, strain2.length].min

    distance = 0

    strain_size.times do |n|
      if strain1[n] != strain2[n]
        distance += 1
      end
    end
    return distance
  end
end
