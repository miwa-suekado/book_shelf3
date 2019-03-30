categories = %w(文学・評論 人文・思想 社会・政治･法律 ノンフィクション 歴史・地理 ビジネス 科学・テクノロジー 医学 コンピュータ・IT アート 趣味・実用 スポーツ・アウトドア 資格 暮らし 旅行ガイド コミック ライトノベル)

categories.each do |category|
  Category.create(name: category)
end