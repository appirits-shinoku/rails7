100.times do |article|
  Article.create(
    title: "testTitle#{article + 1}",
    text: "テキストですよ"
  )
  10.times do |comment|
    Comment.create(contents: "testComment for #{article + 1} / No.#{comment}", article_id: article + 1)
  end
end
