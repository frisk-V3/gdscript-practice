extends Sprite2D 

func _input(event):
	# マウスが押された、かつ左クリックだった時
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		
		# マウスの位置が、画像の範囲内にあるかチェック
		if get_rect().has_point(to_local(event.position)):
			# 1. 色（色調）をランダムに変える
			modulate = Color(randf(), randf(), randf())
			
			# 2. ピョンと跳ねる（さっきと同じ）
			var tween = create_tween()
			tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.05) # 少し大きく
			tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.05) # 戻る
