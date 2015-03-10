class Allergies

  attr_reader :list

  def initialize(num)
    @list = []
    @all_allergies = %w(eggs peanuts shellfish strawberries tomatoes chocolate pollen cats)
    @scores = %w(1 2 4 8 16 32 64 128).map(&:to_i)

    @allergy_hash = @scores.zip(@all_allergies).to_h
    @limit = @scores.reduce(0, :+) + 1

    if @allergy_hash.has_key?(num)

      @list << @allergy_hash[num]

    else

      @current_num = num
      @available_scores = num % @limit

      while (@available_scores > 0)

        if @scores.include?(@current_num) and (@available_scores - @current_num >= 0)
          @available_scores -= @current_num
          @list << @allergy_hash[@current_num]
        end

        @current_num -= 1

      end

      @list = @list.reverse

    end
  end

  def allergic_to?(allergen)

    @list.include? allergen

  end

end
