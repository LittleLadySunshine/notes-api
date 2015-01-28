5.times do |i|
  Note.create(title: "Title ##{i}", body: "A Body.")
end
