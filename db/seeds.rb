grade_one = Genre.create(name: "アニメ＆ゲーム")
grade_two = Genre.create(name: "スポーツ")
grade_three = Genre.create(name: "芸能")
grade_four = Genre.create(name: "ライフスタイル")
grade_five = Genre.create(name: "社会")
grade_six = Genre.create(name: "文系学問")
grade_seven = Genre.create(name: "理系学問")


one_one = grade_one.children.create(name: "アニメ・特撮")
one_two = grade_one.children.create(name: "漫画・ノベル")
one_three = grade_one.children.create(name: "ゲーム・おもちゃ")

# one_quantity.children.create([{name: "正負の数"}, {name: "文字式"}, {name: "資料"}])
# one_function.children.create([{name: "比例・反比例"}, {name: "一次方程式"}])
# one_shape.children.create([{name: "平面図形"}, {name: "立体図形"}])



two_one = grade_two.children.create(name: "野球")
two_two = grade_two.children.create(name: "サッカー")
two_three = grade_two.children.create(name: "スポーツその他")

# two_quantity.children.create([{name: "式の計算"}, {name: "確率"}])
# two_function.children.create([{name: "連立方程式"}, {name: "一次関数"}])
# two_shape.children.create([{name: "平行と合同"}, {name: "証明"}, {name: "図形の性質"}])



three_one = grade_three.children.create(name: "テレビ・映画")
three_two = grade_three.children.create(name: "音楽")
three_three = grade_three.children.create(name: "芸能その他")

# three_quantity.children.create([{name: "式の計算"}, {name: "平方根"}, {name: "標本調査"}])
# three_function.children.create([{name: "二次方程式"}, {name: "二次関数"}])
# three_shape.children.create([{name: "三平方の定理"}, {name: "図形の性質"}, {name: "円周角"}])



four_one = grade_four.children.create(name: "グルメ・生活")
four_two = grade_four.children.create(name: "ホビー")
four_three = grade_four.children.create(name: "ライフスタイルその他")

# three_quantity.children.create([{name: "式の計算"}, {name: "平方根"}, {name: "標本調査"}])
# three_function.children.create([{name: "二次方程式"}, {name: "二次関数"}])
# three_shape.children.create([{name: "三平方の定理"}, {name: "図形の性質"}, {name: "円周角"}])



five_one = grade_five.children.create(name: "地理")
five_two = grade_five.children.create(name: "政治・経済")
five_three = grade_five.children.create(name: "社会その他")

# three_quantity.children.create([{name: "式の計算"}, {name: "平方根"}, {name: "標本調査"}])
# three_function.children.create([{name: "二次方程式"}, {name: "二次関数"}])
# three_shape.children.create([{name: "三平方の定理"}, {name: "図形の性質"}, {name: "円周角"}])



six_one = grade_six.children.create(name: "歴史")
six_two = grade_six.children.create(name: "美術・文学")
six_three = grade_six.children.create(name: "文系学問その他")

# three_quantity.children.create([{name: "式の計算"}, {name: "平方根"}, {name: "標本調査"}])
# three_function.children.create([{name: "二次方程式"}, {name: "二次関数"}])
# three_shape.children.create([{name: "三平方の定理"}, {name: "図形の性質"}, {name: "円周角"}])



seven_one = grade_seven.children.create(name: "物理・化学")
seven_two = grade_seven.children.create(name: "生物")
seven_three = grade_seven.children.create(name: "理系学問その他")

# three_quantity.children.create([{name: "式の計算"}, {name: "平方根"}, {name: "標本調査"}])
# three_function.children.create([{name: "二次方程式"}, {name: "二次関数"}])
# three_shape.children.create([{name: "三平方の定理"}, {name: "図形の性質"}, {name: "円周角"}])


