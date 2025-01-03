-- name: [CS] Yume Nikki 64
-- description: It's da toe-hoes!\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

local TEXT_MOD_NAME = "Yume Nikki 64"
local TEXT_MOD_VERSION = "Release 1"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local TEX_MADOTSUKI = get_texture_info("madotsuki-icon")
local E_MODEL_MADOTSUKI = smlua_model_util_get_id("madotsuki_geo")
local CT_MADOTSUKI = _G.charSelect.character_add("Madotsuki",
					    "Dreamer",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    E_MODEL_MADOTSUKI,
					    CT_MARIO,
					    TEX_MADOTSUKI);

local TEX_MONOKO = get_texture_info("monoko-icon")
local E_MODEL_MONOKO = smlua_model_util_get_id("monoko_geo")
local E_MODEL_MONOKOEX = smlua_model_util_get_id("monokoex_geo")
local CT_MONOKO = _G.charSelect.character_add("Monoko",
					    "White desert friend",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    E_MODEL_MONOKO,
					    CT_MARIO,
					    TEX_MONOKO);

local TEX_MONOKOEX = get_texture_info("monokoex-icon")
local E_MODEL_MONOKOEX = smlua_model_util_get_id("monokoex_geo")
local E_MODEL_MONOKOEXEX = smlua_model_util_get_id("monokoex_geo")
local CT_MONOKOEX = _G.charSelect.character_add("MonokoEX",
					    "Isekai protagonist",
					    "player_legend",
					    {r = 50, g = 100, b = 255},
					    E_MODEL_MONOKOEX,
					    CT_MARIO,
					    TEX_MONOKOEX);
-- Add Voices

local VOICETABLE_MADOTSUKI = {
      --   [CHAR_SOUND_WAAAOOOW] = {'fall2.ogg', 'fall1.ogg'},
   [CHAR_SOUND_ATTACKED] = {'shot2.ogg','no3.ogg','no4.ogg','no1.ogg'},
   [CHAR_SOUND_DOH] = 'pinch.ogg',
   [CHAR_SOUND_DROWNING] = 'end.ogg',
   [CHAR_SOUND_DYING] = 'end.ogg',
   [CHAR_SOUND_EEUH] = 'use2.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'stop.ogg', 'go.ogg'},
   [CHAR_SOUND_HAHA] = 'ping.ogg',
   [CHAR_SOUND_HAHA_2] = 'use2.ogg',
   [CHAR_SOUND_HERE_WE_GO] = 'use2.ogg',
   [CHAR_SOUND_HOOHOO] = 'effect1.ogg',
   [CHAR_SOUND_LETS_A_GO] = 'door.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'bloopActive.ogg',
   [CHAR_SOUND_OKEY_DOKEY] = 'use.ogg',
   [CHAR_SOUND_ON_FIRE] = 'scream.ogg',
   [CHAR_SOUND_OOOF2] = 'no1.ogg',
   [CHAR_SOUND_PUNCH_HOO] = 'no4.ogg',
   [CHAR_SOUND_PUNCH_WAH] = 'no3.ogg',
   [CHAR_SOUND_PUNCH_YAH] = 'no2.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = {'pingEcho2.ogg', 'pingEcho.ogg'},
   [CHAR_SOUND_UH2] = 'use3.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'end.ogg',
   [CHAR_SOUND_WHOA] = {'use5.ogg','use3.ogg'},
   [CHAR_SOUND_YAHOO] = {'flute1.ogg','flute2.ogg','flute3.ogg','flute4.ogg','flute5.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'effect2.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = {'evade1.ogg'},
}

_G.charSelect.character_add_voice(E_MODEL_MADOTSUKI, VOICETABLE_MADOTSUKI)

local VOICETABLE_MONOKO = {
      --   [CHAR_SOUND_WAAAOOOW] = {'fall2.ogg', 'fall1.ogg'},
   [CHAR_SOUND_ATTACKED] = {'punch3.ogg', 'punch2.ogg', 'punch1.ogg'},
   [CHAR_SOUND_DOH] = {'bump1.ogg','bump1.ogg'},
   [CHAR_SOUND_DROWNING] = 'end.ogg',
   [CHAR_SOUND_DYING] = 'scream-slow.ogg',
   [CHAR_SOUND_EEUH] = 'use2.ogg',
   [CHAR_SOUND_GROUND_POUND_WAH] = {'jump1.ogg'},
   [CHAR_SOUND_HAHA] = 'ping.ogg',
   [CHAR_SOUND_HAHA_2] = 'use2.ogg',
   [CHAR_SOUND_MAMA_MIA] = 'bloopActive.ogg',
   [CHAR_SOUND_OKEY_DOKEY] = 'use.ogg',
   [CHAR_SOUND_SO_LONGA_BOWSER] = {'pingEcho2.ogg', 'pingEcho.ogg'},
   [CHAR_SOUND_HOOHOO] = 'effect1.ogg',
   [CHAR_SOUND_ON_FIRE] = 'scream.ogg',
   [CHAR_SOUND_OOOF2] = 'punch1.ogg',
   [CHAR_SOUND_PUNCH_YAH] = {'cancel2.ogg'},
   [CHAR_SOUND_PUNCH_WAH] = {'cancel1.ogg'},
   [CHAR_SOUND_PUNCH_HOO] = {'cancel2.ogg'},
   [CHAR_SOUND_UH2] = 'use3.ogg',
   [CHAR_SOUND_WAAAOOOW] = 'fall2.ogg',
   [CHAR_SOUND_WHOA] = {'go.ogg','stop.ogg'},
   [CHAR_SOUND_YAHOO] = {'sya.ogg', 'suzu.ogg'},
   [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'effect2.ogg',
   [CHAR_SOUND_YAH_WAH_HOO] = {'evade1.ogg'},
   [CHAR_SOUND_LETS_A_GO] = 'door.ogg',
   [CHAR_SOUND_HERE_WE_GO] = 'use2.ogg',
}

_G.charSelect.character_add_voice(E_MODEL_MONOKO, VOICETABLE_MONOKO)
_G.charSelect.character_add_voice(E_MODEL_MONOKOEX, VOICETABLE_MONOKO)

local character_get_voice, update_sound, update_snore = _G.charSelect.character_get_voice, _G.charSelect.voice.sound, _G.charSelect.voice.snore
local function character_sounds(m, sound)
    local v = _G.charSelect.character_get_voice(m)
    if v == VOICETABLE_MADOTSUKI
       or v == VOICETABLE_MONOKO
    then
       return update_sound(m, sound)
    end
end

hook_event(HOOK_CHARACTER_SOUND, character_sounds)
