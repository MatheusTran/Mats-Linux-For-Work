# ~/.config/kitty/kitty/kitten/select_all.py
from kitty.boss import get_boss

def main(args):
    pass

def handle_result(args, answer, target_window_id, boss):
    window = boss.window_id_map.get(target_window_id)
    if window is not None:
        window.select_all()

def is_visible():
    return True