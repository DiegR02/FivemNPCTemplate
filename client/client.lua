Sit = {
    dict = '',
    anim = ''
}

Citizen.CreateThread(function()
    local hash = GetHashKey("mp_m_shopkeep_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "mp_m_shopkeep_01", 1134.21, -982.39, 45.42, 277.47, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
    --GiveWeaponToPed(ped, 0x3AABBBAA , 0, true, true)
    --loadDict(Sit.dict)
    --TaskPlayAnim(ped, Sit.dict, Sit.anim, 8.0, -8, -1, 1, 0, false, false, false)
end)

