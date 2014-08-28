class Import < ActiveRecord::Base

  def file=(file)
    SmarterCSV.process(file.path) do |array|
      Product.create( array.first )
    end
  end

end
