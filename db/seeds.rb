100.times { Fabricate :author }

Author.all.each do |author|
  rand(40).times { Fabricate :post, :author => author }
end