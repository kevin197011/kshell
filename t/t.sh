#!/usr/bin/env bash
# Copyright (c) 2024 Kk
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

# 定义一个基类
Animal() {
    # 类属性
    name=""
    sound=""

    # 类方法：初始化函数
    init() {
        name="$1"
        sound="$2"
    }

    # 类方法：打印动物声音
    make_sound() {
        echo "$name says $sound"
    }
}

# 定义一个子类，继承自基类 Animal
Cat() {
    # 调用基类的构造函数
    Animal init "$1" "Meow"

    # 子类重写父类方法
    make_sound() {
        echo "$name says Meow Meow"
    }
}

# 创建一个 Cat 对象
cat1=$(declare -f Cat)
cat1+="; Cat"
eval "$cat1" "Tom"

# 调用子类重写的方法
make_sound
