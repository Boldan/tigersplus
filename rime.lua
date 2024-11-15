charset_comment_filter = require("charset_comment_filter") --Unicode分区提示
core2022 = require("core2022_filter") --自定义字符集过滤（常用字集）
-- dz_ci = require("dz_ci_filter") --单字模式 这个别用，有问题的
number_translator = require("number")
lua_unicode_display_filter = require("unicode_display")  --Unicode编码提示
calculator_translator = require("calculator_translator")  --简易计算器
exe_processor = require("exe")  -- 网页启动器
shijian2_translator = require("shijian2") -- 高级时间
zh_select_character = require("zh_select_character") -- 以词定字
select_character = require("select_character") -- 以词定字

jidian_date_translator=require("jidian_date_translator")  -- 极点计算器
jidian_single_char_first_filter=require("jidian_single_char_first_filter") --极点单字优先

help_translator = require("help")
inputShow_translator = require("inputShow")
inputShow_Filter = require("inputShow_Filter")
Upper_Filter = require("Upper_Filter")
dic_4w_Filter = require("dic_4w_Filter")
phraseReplace_Filter = require("phraseReplace_Filter")
pinyinAdding_Filter = require("pinyinAdding_Filter")
dateTime_Filter = require("dateTime_filter")
dynamicPhrase_Filter = require("dynamicPhrase_Filter")
phraseExt_Filter = require("phraseExt_Filter")
phraseComment_Filter = require("phraseComment_Filter")
pinyin_translator = require("pinyin_translator")
pinyin_Filter = require("pinyin_Filter")
latexHelp_translator = require("latexHelp_translator")
latex_translator = require("latex_translator")
laneChangeAndSpace_Filter = require("laneChangeAndSpace_Filter")


-- 暴力 GC
-- 详情 https://github.com/hchunhui/librime-lua/issues/307
-- 这样也不会导致卡顿，那就每次都调用一下吧，内存稳稳的
function force_gc()
    -- collectgarbage()
    collectgarbage("step")
end