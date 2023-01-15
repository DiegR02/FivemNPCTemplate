# FivemNPCTemplate
A FiveM Non Playable Character (NPC) generator template. + Animations and weapons 

    -- dict= the animation dictionary that you want to use
    -- anim= the animation that you want to display
    -- List of animation dictionaries and animations: https://github.com/criminalist/Animations-list-GTA5-Fivem/blob/master/anim-list.txt
    Sit = {
        dict = '',
        anim = ''
    }

    Citizen.CreateThread(function()

        -- GetHashKey("") is used to get the NPC model
        -- List of NPC models: https://docs.fivem.net/docs/game-references/ped-models/
        local hash = GetHashKey("mp_m_shopkeep_01")
    
        -- Here, you load the NPC model
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
    
        -- CreatePed() will create the NPC.
        -- You will need to add again the NPC model
        -- Also, you have to declare the coordinates (X, Y, Z) including the rotation (where the npc looks)
        ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1134.21, -982.39, 45.42, 277.47, false, true)
    
        -- If 'true', the NPC wont´t react to any event
        SetBlockingOfNonTemporaryEvents(ped, true)
    
        -- If 'true', the NPC wont´t move
        FreezeEntityPosition(ped, true)
    
        -- If 'true', the NPC will be invunerable to damage
        SetEntityInvincible(ped, true)
    
        -- GiveWeaponToPed() is used to give a weapon to any NPC model
        -- GiveWeaponToPed( ped, "Model of the weapon that you want to use" , 0, true, true )
        -- List of weapon models: https://wiki.rage.mp/index.php?title=Weapons
        GiveWeaponToPed(ped, 0x3AABBBAA , 0, true, true)
    
        -- loadDict() is used to load the animations that you selected before
        loadDict(Sit.dict)
    
        -- TaskPlayAnim() is used to display the animation selected before
        TaskPlayAnim(ped, Sit.dict, Sit.anim, 8.0, -8, -1, 1, 0, false, false, false)
    end)
    
Everytime you need to add a new NPC, you only have to repeat the same code with the new changes that you want
