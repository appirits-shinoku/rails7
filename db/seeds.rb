100.times do |article|
  if article % 2 == 0
  Article.create(
    title: "testTitle#{article + 1}",
    comment_flg: 1,
    text: "コメントありのテキストですよ"
  )
  else
    Article.create(
      title: "testTitle#{article + 1}",
      comment_flg: 0,
      text: "コメントなしのテキストですよ"
    )
  end
  10.times do |comment|
    Comment.create(contents: "testComment for #{article + 1} / No.#{comment}", article_id: article + 1)
  end
end
