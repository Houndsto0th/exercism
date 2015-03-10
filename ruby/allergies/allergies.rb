class Allergies

  attr_reader :list

  def initialize(num)
    @list = []
    @all_allergies = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
    @scores = %w(1 2 4 8 16 32 64 128).map(&:to_i)
    @allergy_hash = @scores.zip(@all_allergies).to_h
    puts @allergy_hash
  end

  def allergic_to?(allergen)
    if allergen == "eggs" || allergen == "shellfish"
      true
    else
      false
    end
  end

end
