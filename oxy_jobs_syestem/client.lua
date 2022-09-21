data = {}
ServerCallbacks = {}
CurrentRequestId = 0
function TriggerServerCallback(c, d, ...)
    ServerCallbacks[CurrentRequestId] = d
    TriggerServerEvent(GetCurrentResourceName() .. ":triggerServerCallback", c, CurrentRequestId, ...)
    if CurrentRequestId < 65535 then
        CurrentRequestId = CurrentRequestId + 1
    else
        CurrentRequestId = 0
    end
end

RegisterNetEvent(GetCurrentResourceName() .. ":serverCallback")
AddEventHandler(GetCurrentResourceName() .. ":serverCallback", function(e, ...)
    ServerCallbacks[e](...)
    ServerCallbacks[e] = nil
end)

--quest












Citizen.CreateThread(function()
    -- Font
    RegisterFontFile('sgn')
    signatureFont = RegisterFontId('Adinda Melia')

    local LogoMarker = CreateRuntimeTxd("Logo")
    CreateRuntimeTextureFromImage(LogoMarker, "Logo", "assets/capsuni.png")
    local LogoMarker1 = CreateRuntimeTxd("Logo1")
    CreateRuntimeTextureFromImage(LogoMarker1, "Logo1", "assets/afine.png")
    local LogoMarker2 = CreateRuntimeTxd("Logo2")
    CreateRuntimeTextureFromImage(LogoMarker2, "Logo2", "assets/apple.png")
    local LogoMarker3 = CreateRuntimeTxd("Logo3")
    CreateRuntimeTextureFromImage(LogoMarker3, "Logo3", "assets/orange.png")
    local LogoMarker4 = CreateRuntimeTxd("Logo4")
    CreateRuntimeTextureFromImage(LogoMarker4, "Logo4", "assets/stick.png")
    idReady = true
end)




data = {
    [1] = { 1771.6434326172,3661.5402832031,34.308643341064,"gem",222 },
    [2] = { 1770.5979003906,3658.7453613281,34.382598876953, "gem1",2222 }
}





Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        for index, value in ipairs(data) do
            local pos = GetEntityCoords(GetPlayerPed(-1), true)
            if Vdist(pos.x, pos.y, pos.z, value[1], value[2], value[3]) < 2.5 then
                print(value[5])
                DrawText3D(value[1], value[2], value[3] + 0.53, "~w~Apasa ~y~E~w~ pentru a vinde gem de "..value[4]..", pret curent "..value[5].."!",
                    0.8)
                if IsControlJustReleased(0, 38) then
                   TriggerServerEvent("sugiplvaloareoieiinguracutoatamana",value[4],value[5])
                end
            end
        end
    end
end)








local jobs = {
    ["current"] = nil,
    ["capsuni"] = {
        [1] = { 2047.5161132813,4965.0927734375,41.067489624023, false, math.random(1, 4), 0, { 200, 500 } },
        [2] = { 2053.0646972656,4959.2192382813,41.058650970459, false, math.random(1, 4), 0, { 200, 500 } },
        [3] = { 2059.2697753906,4953.1440429688,41.021644592285, false, math.random(1, 4), 0, { 200, 500 } },
        [4] = { 2065.7280273438,4946.9135742188,41.049449920654, false, math.random(1, 4), 0, { 200, 500 } },
        [5] = { 2064.6315917969,4942.1708984375,41.098247528076, false, math.random(1, 4), 0, { 200, 500 } },
        [6] = { 2059.4384765625,4947.4995117188,41.093929290771, false, math.random(1, 4), 0, { 200, 500 } },
        [7] = { 2052.0065917969,4955.0341796875,41.103103637695, false, math.random(1, 4), 0, { 200, 500 } },
        [8] = { 2046.3508300781,4960.3696289063,41.093242645264, false, math.random(1, 4), 0, { 200, 500 } },
        [9] = { 2041.6193847656,4959.4868164063,41.110157012939, false, math.random(1, 4), 0, { 200, 500 } },
        [10] = { 2049.4184570313,4951.62109375,41.075057983398, false, math.random(1, 4), 0, { 200, 500 } },
        [11] = { 2057.1411132813,4944.0649414063,41.068599700928, false, math.random(1, 4), 0, { 200, 500 } },
        [12] = { 2058.712890625,4937.1372070313,41.11402130127, false, math.random(1, 4), 0, { 200, 500 } },
        [13] = { 2052.9050292969,4942.7524414063,41.109703063965, false, math.random(1, 4), 0, { 200, 500 } },
        [14] = { 2047.34765625,4948.21875,41.097995758057, false, math.random(1, 4), 0, { 200, 500 } },
        [15] = { 2040.4191894531,4955.0864257813,41.078407287598, false, math.random(1, 4), 0, { 200, 500 } },
        [16] = { 2036.5806884766,4953.2006835938,41.04573059082, false, math.random(1, 4), 0, { 200, 500 } },
        [17] = { 2044.5903320313,4945.1689453125,41.070308685303, false, math.random(1, 4), 0, { 200, 500 } },
        [18] = { 2051.9699707031,4937.8696289063,41.064830780029, false, math.random(1, 4), 0, { 200, 500 } },
        [19] = { 2052.3051757813,4932.1450195313,41.072101593018, false, math.random(1, 4), 0, { 200, 500 } },
        [20] = { 2045.6088867188,4938.6372070313,41.090335845947, false, math.random(1, 4), 0, { 200, 500 } },
        [21] = { 2038.8021240234,4945.6127929688,41.100898742676, false, math.random(1, 4), 0, { 200, 500 } },
        [22] = { 2033.5889892578,4950.51953125,41.076343536377, false, math.random(1, 4), 0, { 200, 500 } },
        [23] = { 2030.8292236328,4947.7080078125,41.094841003418, false, math.random(1, 4), 0, { 200, 500 } },
        [24] = { 2037.7384033203,4940.6381835938,41.057727813721, false, math.random(1, 4), 0, { 200, 500 } },
        [25] = { 2044.5803222656,4933.9106445313,41.091106414795, false, math.random(1, 4), 0, { 200, 500 } },
        [26] = { 2046.9468994141,4926.2158203125,41.1012840271, false, math.random(1, 4), 0, { 200, 500 } },
        [27] = { 2040.9151611328,4932.1987304688,41.104038238525, false, math.random(1, 4), 0, { 200, 500 } },
        [28] = { 2034.1070556641,4938.8422851563,41.11637878418, false, math.random(1, 4), 0, { 200, 500 } },
        [29] = { 2028.4556884766,4944.64453125,41.068210601807, false, math.random(1, 4), 0, { 200, 500 } },
        [30] = { 2024.9731445313,4942.3032226563,41.081321716309, false, math.random(1, 4), 0, { 200, 500 } },
        [31] = { 2030.2764892578,4936.892578125,41.083316802979, false, math.random(1, 4), 0, { 200, 500 } },
        [31] = { 2035.7647705078,4931.3432617188,41.078407287598, false, math.random(1, 4), 0, { 200, 500 } },
        [32] = { 2042.1591796875,4925.0307617188,41.099941253662, false, math.random(1, 4), 0, { 200, 500 } },
        [33] = { 2039.6212158203,4918.8168945313,41.081420898438, false, math.random(1, 4), 0, { 200, 500 } },
        [34] = { 2033.3416748047,4925.2729492188,41.053104400635, false, math.random(1, 4), 0, { 200, 500 } },
        [35] = { 2025.0441894531,4933.3422851563,41.039916992188, false, math.random(1, 4), 0, { 200, 500 } },
        [36] = { 2020.2124023438,4938.1489257813,41.080619812012, false, math.random(1, 4), 0, { 200, 500 } },
        ["giveitem"] = "capsuna",
        ["max"] = 99,
        ["current"] = 0,
        ["command"] = "e box",
        ["commandpick"] = "e pickup",
        ["nume_imagie"] = "Logo",
        ["payper"] = 100,
        ["numerecrestere"] = "capsuni",
        ["paybcar"] = 100,
        ["vehname"] = "kalahari",
        ["jobname"] = "Capsunar",
        ["orenecesare"] = 0,
        ["startjob"] = { 2030.1215820313,4980.3427734375,42.09831237793,51.702766418457 },
        ["locluatmasina"] = { 2019.4565429688,4975.6049804688,41.203922271729,233.0798034668 },
        ["locspawnmasina"] = { 2019.4565429688,4975.6049804688,41.203922271729,233.0798034668 },
        ["locvanzare-transactieptitem"] = { 1772.3721923828,3652.4812011719,34.402519226074,210.47497558594 },
        ["vehdata"] = { ["vehicle"] = 0 }
    },
    ["afine"] = {
        [1] = { 2047.0880126953,4911.7739257813,41.056213378906, false, math.random(1, 4), 0, { 200, 500 } },
        [2] = { 2052.3835449219,4906.1904296875,41.101505279541, false, math.random(1, 4), 0, { 200, 500 } },
        [3] = { 2058.7770996094,4899.9741210938,41.093559265137, false, math.random(1, 4), 0, { 200, 500 } },
        [4] = { 2066.2297363281,4892.4213867188,41.103534698486, false, math.random(1, 4), 0, { 200, 500 } },
        [5] = { 2069.9162597656,4895.0209960938,41.073062896729, false, math.random(1, 4), 0, { 200, 500 } },
        [6] = { 2062.5388183594,4902.427734375,41.110523223877, false, math.random(1, 4), 0, { 200, 500 } },
        [7] = { 2056.7321777344,4908.3076171875,41.10168838501, false, math.random(1, 4), 0, { 200, 500 } },
        [8] = { 2050.8525390625,4914.1025390625,41.066009521484, false, math.random(1, 4), 0, { 200, 500 } },
        [9] = { 2053.1091308594,4917.3842773438,41.093818664551, false, math.random(1, 4), 0, { 200, 500 } },
        [10] = { 2059.0578613281,4911.470703125,41.0924949646, false, math.random(1, 4), 0, { 200, 500 } },
        [11] = { 2071.4340820313,4899.0053710938,41.129814147949, false, math.random(1, 4), 0, { 200, 500 } },
        [12] = { 2074.5717773438,4901.990234375,41.083831787109, false, math.random(1, 4), 0, { 200, 500 } },
        [13] = { 2068.6362304688,4907.79296875,41.067497253418, false, math.random(1, 4), 0, { 200, 500 } },
        [14] = { 2062.1540527344,4914.1000976563,41.086448669434, false, math.random(1, 4), 0, { 200, 500 } },
        [15] = { 2056.7797851563,4919.4321289063,41.092819213867, false, math.random(1, 4), 0, { 200, 500 } },
        [16] = { 2058.4379882813,4923.515625,41.11771774292, false, math.random(1, 4), 0, { 200, 500 } },
        [17] = { 2064.3349609375,4917.5439453125,41.096759796143, false, math.random(1, 4), 0, { 200, 500 } },
        [18] = { 2070.2707519531,4911.5571289063,41.112941741943, false, math.random(1, 4), 0, { 200, 500 } },
        [19] = { 2076.2951660156,4905.48046875,41.075012207031, false, math.random(1, 4), 0, { 200, 500 } },
        [20] = { 2081.3474121094,4906.4609375,41.066310882568, false, math.random(1, 4), 0, { 200, 500 } },
        [21] = { 2075.1635742188,4912.5708007813,41.093971252441, false, math.random(1, 4), 0, { 200, 500 } },
        [22] = { 2069.7741699219,4918.009765625,41.056041717529, false, math.random(1, 4), 0, { 200, 500 } },
        [23] = { 2063.5805664063,4924.0458984375,41.035842895508, false, math.random(1, 4), 0, { 200, 500 } },
        [24] = { 2064.044921875,4929.1484375,41.071430206299, false, math.random(1, 4), 0, { 200, 500 } },
        [25] = { 2068.6528320313,4924.3686523438,41.091152191162, false, math.random(1, 4), 0, { 200, 500 } },
        [26] = { 2074.4521484375,4918.5766601563,41.091358184814, false, math.random(1, 4), 0, { 200, 500 } },
        [27] = { 2080.6818847656,4912.5283203125,41.106796264648, false, math.random(1, 4), 0, { 200, 500 } },
        [28] = { 2087.0153808594,4912.0668945313,41.117862701416, false, math.random(1, 4), 0, { 200, 500 } },
        [29] = { 2082.39453125,4916.7202148438,41.103271484375, false, math.random(1, 4), 0, { 200, 500 } },
        [30] = { 2076.6079101563,4922.2924804688,41.103183746338, false, math.random(1, 4), 0, { 200, 500 } },
        [31] = { 2069.9802246094,4928.9487304688,41.121185302734, false, math.random(1, 4), 0, { 200, 500 } },
        [31] = { 2070.4157714844,4933.9404296875,41.097339630127, false, math.random(1, 4), 0, { 200, 500 } },
        [32] = { 2076.6169433594,4927.7592773438,41.082183837891, false, math.random(1, 4), 0, { 200, 500 } },
        [33] = { 2081.6127929688,4922.8173828125,41.093852996826, false, math.random(1, 4), 0, { 200, 500 } },
        [34] = { 2087.0458984375,4917.2080078125,41.107368469238, false, math.random(1, 4), 0, { 200, 500 } },
        [35] = { 2092.4538574219,4917.7260742188,41.084087371826, false, math.random(1, 4), 0, { 200, 500 } },
        [36] = { 2085.5964355469,4924.7587890625,41.094158172607, false, math.random(1, 4), 0, { 200, 500 } },
        ["giveitem"] = "afine",
        ["max"] = 99,
        ["current"] = 0,
        ["command"] = "e box",
        ["commandpick"] = "e pickup",
        ["nume_imagie"] = "Logo1",
        ["payper"] = 100,
        ["numerecrestere"] = "afine",
        ["paybcar"] = 100,
        ["vehname"] = "kalahari",
        ["jobname"] = "Afinar",
        ["orenecesare"] = 0,
        ["startjob"] = { 2016.3638916016,4987.142578125,42.098316192627 },
        ["locluatmasina"] = { 2006.1968994141,4986.7895507813,41.427810668945 },
        ["locspawnmasina"] = { 2006.1968994141,4986.7895507813,41.427810668945 },
        ["locvanzare-transactieptitem"] = { 1770.2581787109,3652.0466308594,34.426475524902 },
        ["vehdata"] = { ["vehicle"] = 0 }
    },
    ["mere"] = {
        [1] = { 2336.1274414063,4975.25,42.617336273193, false, math.random(1, 4), 0, { 200, 500 } },
        [2] = { 2348.7497558594,4975.6645507813,42.755474090576, false, math.random(1, 4), 0, { 200, 500 } },
        [3] = { 2360.8012695313,4976.1645507813,43.198802947998, false, math.random(1, 4), 0, { 200, 500 } },
        [4] = { 2349.966796875,4989.23046875,43.043773651123, false, math.random(1, 4), 0, { 200, 500 } },
        [5] = { 2360.9924316406,4988.6201171875,43.298667907715, false, math.random(1, 4), 0, { 200, 500 } },
        [6] = { 2373.279296875,4988.4521484375,43.954586029053, false, math.random(1, 4), 0, { 200, 500 } },
        [7] = { 2389.1574707031,4991.927734375,45.112476348877, false, math.random(1, 4), 0, { 200, 500 } },
        [8] = { 2378.2834472656,5003.5024414063,44.650157928467, false, math.random(1, 4), 0, { 200, 500 } },
        [9] = { 2370.0798339844,5010.2270507813,44.335475921631, false, math.random(1, 4), 0, { 200, 500 } },
        [10] = { 2376.2509765625,5016.1743164063,45.362842559814, false, math.random(1, 4), 0, { 200, 500 } },
        [11] = { 2389.2094726563,5004.826171875,45.71732711792, false, math.random(1, 4), 0, { 200, 500 } },
        ["giveitem"] = "mere",
        ["max"] = 99,
        ["current"] = 0,
        ["command"] = "e box",
        ["commandpick"] = "e wave6",
        ["nume_imagie"] = "Logo2",
        ["payper"] = 200,
        ["numerecrestere"] = "mere",
        ["paybcar"] = 100,
        ["vehname"] = "kalahari",
        ["jobname"] = "Cules mere",
        ["orenecesare"] = 1,
        ["startjob"] = { 2564.2172851563,4680.5268554688,34.076835632324,222.09690856934 },
        ["locluatmasina"] = { 2553.3608398438,4674.9716796875,33.915340423584 },
        ["locspawnmasina"] = { 2553.3608398438,4674.9716796875,33.915340423584 },
        ["locvanzare-transactieptitem"] = { 1767.4848632813,3650.2080078125,34.463890075684 },
        ["vehdata"] = { ["vehicle"] = 0 }
    },
    ["portocale"] = {
        [1] = { 2317.3740234375,4983.431640625,41.764015197754, false, math.random(1, 4), 0, { 200, 500 } },
        [2] = { 2316.3823242188,4993.201171875,42.044376373291, false, math.random(1, 4), 0, { 200, 500 } },
        [3] = { 2305.2214355469,4995.7783203125,42.27250289917, false, math.random(1, 4), 0, { 200, 500 } },
        [4] = { 2316.25390625,5008.1254882813,42.518341064453, false, math.random(1, 4), 0, { 200, 500 } },
        [5] = { 2330.6169433594,4995.8422851563,42.108695983887, false, math.random(1, 4), 0, { 200, 500 } },
        [6] = { 2330.7863769531,5007.2700195313,42.342586517334, false, math.random(1, 4), 0, { 200, 500 } },
        [7] = { 2329.8076171875,5021.0083007813,42.864566802979, false, math.random(1, 4), 0, { 200, 500 } },
        [8] = { 2329.1923828125,5036.435546875,44.375366210938, false, math.random(1, 4), 0, { 200, 500 } },
        [9] = { 2341.2502441406,5034.9096679688,44.305465698242, false, math.random(1, 4), 0, { 200, 500 } },
        [10] = { 2342.9357910156,5021.9091796875,43.441585540771, false, math.random(1, 4), 0, { 200, 500 } },
        [11] = { 2356.3940429688,5020.2900390625,43.823108673096, false, math.random(1, 4), 0, { 200, 500 } },
        ["giveitem"] = "portocale",
        ["max"] = 99,
        ["current"] = 0,
        ["command"] = "e box",
        ["commandpick"] = "e wave6",
        ["nume_imagie"] = "Logo3",
        ["payper"] = 200,
        ["numerecrestere"] = "potrocale",
        ["paybcar"] = 100,
        ["vehname"] = "kalahari",
        ["jobname"] = "Cules portocale",
        ["orenecesare"] = 1,
        ["startjob"] = { 2434.8083496094,5011.9365234375,46.844165802002 },
        ["locluatmasina"] = { 2414.0637207031,4991.4526367188,46.234043121338 },
        ["locspawnmasina"] = { 2414.0637207031,4991.4526367188,46.234043121338 },
        ["locvanzare-transactieptitem"] = { 1767.4848632813,3650.2080078125,34.463890075684 },
        ["vehdata"] = { ["vehicle"] = 0 }
    },
    ["lemn"] = {
        [1] = { -696.11450195313,5431.4140625,46.144542694092, false, math.random(1, 4), 0, { 200, 500 } },
        [2] = { -711.2431640625,5403.3623046875,52.522693634033, false, math.random(1, 4), 0, { 200, 500 } },
        [3] = { -689.42279052734,5410.828125,48.982147216797, false, math.random(1, 4), 0, { 200, 500 } },
        [4] = { -681.32336425781,5401.5986328125,51.086181640625, false, math.random(1, 4), 0, { 200, 500 } },
        [5] = { -674.93438720703,5391.5283203125,53.102966308594, false, math.random(1, 4), 0, { 200, 500 } },
        [6] = { -674.06750488281,5378.9438476563,56.761974334717, false, math.random(1, 4), 0, { 200, 500 } },
        [7] = { -697.12030029297,5377.775390625,59.087768554688, false, math.random(1, 4), 0, { 200, 500 } },
        [8] = { -698.88806152344,5367.2416992188,62.352565765381, false, math.random(1, 4), 0, { 200, 500 } },
        [9] = { -706.47357177734,5351.978515625,66.742919921875, false, math.random(1, 4), 0, { 200, 500 } },
        [10] = { -695.24987792969,5345.4038085938,68.220993041992, false, math.random(1, 4), 0, { 200, 500 } },
        [11] = { -713.48913574219,5330.1899414063,70.734016418457, false, math.random(1, 4), 0, { 200, 500 } },
        [12] = { -690.04559326172,5324.5126953125,69.209098815918, false, math.random(1, 4), 0, { 200, 500 } },
        [13] = { -661.95599365234,5319.0107421875,65.374603271484, false, math.random(1, 4), 0, { 200, 500 } },
        [14] = { -650.42858886719,5345.0048828125,60.73433303833, false, math.random(1, 4), 0, { 200, 500 } },
        [15] = { -667.1240234375,5379.1000976563,55.256225585938, false, math.random(1, 4), 0, { 200, 500 } },
        [16] = { -674.65081787109,5391.65234375,53.016937255859, false, math.random(1, 4), 0, { 200, 500 } },
        [17] = { -731.8427734375,5429.05078125,44.101440429688, false, math.random(1, 4), 0, { 200, 500 } },
        [18] = { -749.79669189453,5432.5478515625,40.069183349609, false, math.random(1, 4), 0, { 200, 500 } },
        ["giveitem"] = "creanga",
        ["max"] = 99,
        ["current"] = 0,
        ["command"] = "e box",
        ["commandpick"] = "e pickup",
        ["nume_imagie"] = "Logo4",
        ["payper"] = 340,
        ["numerecrestere"] = "crengi",
        ["paybcar"] = 100,
        ["vehname"] = "rumpo3",
        ["jobname"] = "Padurar",
        ["orenecesare"] = 20,
        ["startjob"] = { -841.37036132813,5401.2309570313,34.615207672119,112.58967590332 },
        ["locluatmasina"] = { -801.68426513672,5405.2006835938,34.077766418457,206.93180847168 },
        ["locspawnmasina"] = { -801.68426513672,5405.2006835938,34.077766418457,206.93180847168 },
        ["locvanzare-transactieptitem"] = { -195.80052185059,6264.9155273438,31.489345550537,219.93545532227 },
        ["vehdata"] = { ["vehicle"] = 0 }
    }
}

function timpPayday1(x, y, width, height, scale, text, r, g, b, a, outline)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(0, 0, 0, 255)
    SetTextDropShadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    --SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function DrawText3D(x, y, z, text, scl)

    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    local scale = (1 / dist) * scl
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 1.1 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

learefacute = false



function tprint(tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
        formatting = string.rep("  ", indent) .. k .. ": "
        if type(v) == "table" then
            print(formatting)
            tprint(v, indent + 1)
        else
            print(formatting .. v)
        end
    end
end

function getcar(vehname, x, y, z, jobname)
    local hash = GetHashKey(vehname)
    local k = 10
    while not HasModelLoaded(hash) and k > 1 do
        RequestModel(hash)
        k = k - 1

        Citizen.Wait(1000)
    end
    if HasModelLoaded(hash) then
        Citizen.CreateThread(function()
            testVeh = CreateVehicle(hash, x, y, z, true, true)
            TaskWarpPedIntoVehicle(GetPlayerPed(-1), testVeh, -1)
            SetVehicleNumberPlateText(testVeh, jobname .. math.random(0, 10000000000000))
            jobs[ jobs["current"] ]["vehdata"]["vehicle"] = testVeh
        end)

    end
end

cutieinmana = false
local isInVehicle = false
local isEnteringVehicle = false
local currentVehicle = 0
local currentSeat = 0
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local ped = PlayerPedId()

        if not isInVehicle and not IsPlayerDead(PlayerId()) then
            if DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not isEnteringVehicle then
                -- trying to enter a vehicle!
                local vehicle = GetVehiclePedIsTryingToEnter(ped)
                local seat = GetSeatPedIsTryingToEnter(ped)
                local netId = VehToNet(vehicle)
                isEnteringVehicle = true
                TriggerServerEvent('baseevents:enteringVehicle', vehicle, seat,
                    GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)), netId)
            elseif not DoesEntityExist(GetVehiclePedIsTryingToEnter(ped)) and not IsPedInAnyVehicle(ped, true) and
                isEnteringVehicle then
                -- vehicle entering aborted
                TriggerServerEvent('baseevents:enteringAborted')
                isEnteringVehicle = false
            elseif IsPedInAnyVehicle(ped, false) then
                -- suddenly appeared in a vehicle, possible teleport
                isEnteringVehicle = false
                isInVehicle = true
                currentVehicle = GetVehiclePedIsUsing(ped)
                currentSeat = 0
                local model = GetEntityModel(currentVehicle)
                local name = GetDisplayNameFromVehicleModel()
                local netId = VehToNet(currentVehicle)
                TriggerServerEvent('baseevents:enteredVehicle', currentVehicle, currentSeat,
                    GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
            end
        elseif isInVehicle then
            if not IsPedInAnyVehicle(ped, false) or IsPlayerDead(PlayerId()) then
                -- bye, vehicle
                local model = GetEntityModel(currentVehicle)
                local name = GetDisplayNameFromVehicleModel()
                local netId = VehToNet(currentVehicle)
                TriggerServerEvent('baseevents:leftVehicle', currentVehicle, currentSeat,
                    GetDisplayNameFromVehicleModel(GetEntityModel(currentVehicle)), netId)
                isInVehicle = false
                currentVehicle = 0
                currentSeat = 0
            end
        end
        Citizen.Wait(50)
    end
end)





Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        for index, value1 in pairs(jobs) do
            value11 = jobs[index]
            -- print(json.encode(value))
            if ('table' == type(value1)) then
                for index1, value in pairs(jobs[index]) do
                    if ('number' ~= type(value)) then
                        if ('table' == type(value1)) then
                            if jobs[index][index1][6] ~= nil then
                                if jobs[index][index1][6] > 0 then
                                    jobs[index][index1][6] = jobs[index][index1][6] - 1
                                    if (jobs[index][index1][6] == 0) then
                                        jobs[index][index1][5] = math.random(1, 5)
                                    end
                                end
                            end
                            --jobs[value1][index1][6] = jobs[value1][index][6] - 1
                        end
                    end
                end
            end


        end
        Wait(1000)

    end
end)


Citizen.CreateThread(function()
    while true do
        if jobs["current"] ~= nil then
            if GetEntitySpeed(jobs[ jobs["current"] ]["vehdata"]["vehicle"]) == 0 then
                local pos = GetEntityCoords(GetPlayerPed(-1), true)

                local offSet = GetOffsetFromEntityInWorldCoords(jobs[ jobs["current"] ]["vehdata"]["vehicle"],
                    0.0,
                    -2.0
                    , 0.0)
                if Vdist(pos.x, pos.y, pos.z, offSet.x, offSet.y, offSet.z) < 1.5 then
                    if not IsPedInAnyVehicle(GetPlayerPed(-1)) then

                        if not cutieinmana then
                            DrawText3D(offSet.x, offSet.y, offSet.z + 0.5, "Apasa E pentru a lua cutia din masina", 1.0)
                            if IsControlJustReleased(0, 38) then
                                if IsPedInAnyVehicle(GetPlayerPed(-1)) == false then
                                    cutieinmana = true
                                    SetVehicleDoorsLocked(jobs[ jobs["current"] ]["vehdata"]["vehicle"], 2)
                                    ExecuteCommand(jobs[ jobs["current"] ]["command"])
                                    Wait(1000)
                                end
                            end
                        else

                            DrawText3D(offSet.x, offSet.y, offSet.z + 0.5, "Apasa E pentru a pune cutia din masina", 1.0)
                            if IsControlJustReleased(0, 38) then
                                cutieinmana = false
                                SetVehicleDoorsLocked(jobs[ jobs["current"] ]["vehdata"]["vehicle"], 0)
                                ExecuteCommand("e c")
                                Wait(1000)

                            end
                        end

                    end
                end
            end
        else
            Wait(2000)
        end
        Wait(0)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local pos = GetEntityCoords(GetPlayerPed(-1), true)
        if jobs["current"] ~= nil then
            --print(json.encode(jobs))
            for index, value in pairs(jobs[ jobs["current"] ]) do
                value1 = jobs[index]
                -- print(json.encode(value))
                if Vdist(pos.x, pos.y, pos.z, jobs[ jobs["current"] ]["startjob"][1],
                    jobs[ jobs["current"] ]["startjob"][2], jobs[ jobs["current"] ]["startjob"][3]) < 1.5 then
                    DrawText3D(jobs[ jobs["current"] ]["startjob"][1],
                        jobs[ jobs["current"] ]["startjob"][2],
                        jobs[ jobs["current"] ]["startjob"][3] + 0.53,
                        "~w~Apasa E pentru a demisiona de la job-ul de " .. jobs[ jobs["current"] ]["jobname"] .. "!"
                        ,
                        0.5)
                    if IsControlJustReleased(0, 38) then
                        ExecuteCommand("e c")
                        jobs["current"] = nil
                        break
                    end

                end
         
                if Vdist(pos.x, pos.y, pos.z, jobs[ jobs["current"] ]["locvanzare-transactieptitem"][1],
                    jobs[ jobs["current"] ]["locvanzare-transactieptitem"][2],
                    jobs[ jobs["current"] ]["locvanzare-transactieptitem"][3]) < 1.5 then
                    if cutieinmana then
                        DrawText3D(jobs[ jobs["current"] ]["locvanzare-transactieptitem"][1],
                            jobs[ jobs["current"] ]["locvanzare-transactieptitem"][2],
                            jobs[ jobs["current"] ]["locvanzare-transactieptitem"][3] + 0.53,
                            "~w~Apasa E pentru a vinde cele " ..
                            jobs[ jobs["current"] ]["current"] ..
                            " " ..
                            jobs[ jobs["current"] ]["numerecrestere"] ..
                            " pentru " .. jobs[ jobs["current"] ]["current"] * jobs[ jobs["current"] ]["payper"] .. " !\n sau Apasa G pentru a le cumpara pentru "..jobs[ jobs["current"] ]["current"] * (jobs[ jobs["current"] ]["payper"]*0.3)
                            ,
                            0.5)
                        if IsControlJustReleased(0, 38) then
                            TriggerServerEvent("finishjob_oxy",
                                jobs[ jobs["current"] ]["current"] * jobs[ jobs["current"] ]["payper"])
                            jobs[ jobs["current"] ]["current"] = 0
                        end
                        if IsControlJustReleased(0, 47) then
                            TriggerServerEvent("finishjob_oxy1",
                            jobs[ jobs["current"] ]["current"] * (jobs[ jobs["current"] ]["payper"]*0.3),jobs[ jobs["current"] ]["current"],jobs["current"])
                            jobs[ jobs["current"] ]["current"] = 0
                        end
                    else
                        DrawText3D(jobs[ jobs["current"] ]["locvanzare-transactieptitem"][1],
                            jobs[ jobs["current"] ]["locvanzare-transactieptitem"][2],
                            jobs[ jobs["current"] ]["locvanzare-transactieptitem"][3] + 0.53,
                            "Pentru a vinde trebuie sa ai cutia in mana !"
                            ,
                            0.5)
                    end
                end
                if Vdist(pos.x, pos.y, pos.z, jobs[ jobs["current"] ]["locluatmasina"][1],
                    jobs[ jobs["current"] ]["locluatmasina"][2], jobs[ jobs["current"] ]["locluatmasina"][3]) < 1.5 then
                    if DoesEntityExist(jobs[ jobs["current"] ]["vehdata"]["vehicle"]) then
                        DrawText3D(jobs[ jobs["current"] ]["locluatmasina"][1],
                            jobs[ jobs["current"] ]["locluatmasina"][2],
                            jobs[ jobs["current"] ]["locluatmasina"][3] + 0.53,
                            "~w~Masina pentru job-ul de " .. jobs["current"] .. " este deja scoasa!",
                            0.5)
                        if GetVehiclePedIsIn(GetPlayerPed(-1), false) == jobs[ jobs["current"] ]["vehdata"]["vehicle"] then
                            DrawText3D(jobs[ jobs["current"] ]["locluatmasina"][1],
                                jobs[ jobs["current"] ]["locluatmasina"][2],
                                jobs[ jobs["current"] ]["locluatmasina"][3] + 0.13,
                                "~w~Apasa E pentru a baga masina inapoi!",
                                0.5)
                            if IsControlJustReleased(0, 38) then
                                DeleteEntity(jobs[ jobs["current"] ]["vehdata"]["vehicle"])
                                jobs[ jobs["current"] ]["vehdata"]["vehicle"] = 0
                                Wait(2500)
                                ExecuteCommand("e c")
                                cutieinmana = false
                            end
                        end
                    else
                        DrawText3D(jobs[ jobs["current"] ]["locluatmasina"][1],
                            jobs[ jobs["current"] ]["locluatmasina"][2],
                            jobs[ jobs["current"] ]["locluatmasina"][3] + 0.53,
                            "~w~Apasa E pentru a lua masina pentru job-ul de" .. jobs["current"] .. "!",
                            0.5)
                        if IsControlJustReleased(0, 38) then
                            getcar(jobs[
                                jobs["current"
                                    ] ]["vehname"],
                                jobs[ jobs["current"] ]["locspawnmasina"][1],
                                jobs[ jobs["current"] ]["locspawnmasina"][2],
                                jobs[ jobs["current"] ]["locspawnmasina"][3], jobs["current"])
                            --print(jobs[ jobs["current"] ]["vehdata"]["vehicle"])
                            Wait(200)

                            ExecuteCommand("e c")
                            cutieinmana = false
                        end
                    end
                elseif Vdist(pos.x, pos.y, pos.z, jobs[ jobs["current"] ]["locluatmasina"][1],
                    jobs[ jobs["current"] ]["locluatmasina"][2], jobs[ jobs["current"] ]["locluatmasina"][3]) < 13.5 then
                    DrawText3D(jobs[ jobs["current"] ]["locluatmasina"][1],
                        jobs[ jobs["current"] ]["locluatmasina"][2], jobs[ jobs["current"] ]["locluatmasina"][3] + 0.53,
                        "~w~Loc de luat masina pentru job-ul de " .. jobs["current"] .. "!",
                        0.5)
                end
                --print(jobs[ jobs["current"] ][index])
                if (
                    'number' ~= type(jobs[ jobs["current"] ][index]) and index ~= "locluatmasina" and
                        index ~= "locspawnmasina" and index ~= "startjob" and index ~= "locvanzare-transactieptitem") then

                    asd = GetWorldPositionOfEntityBone(GetPlayerPed(-1), 30)
                    if cutieinmana then
                        DrawText3D(asd.x, asd.y, asd.z + 0.33,
                            "Cutie: " .. jobs[ jobs["current"] ]["current"] .. "/" .. jobs[ jobs["current"] ]["max"],
                            0.5)
                    end
                    if Vdist(pos.x, pos.y, pos.z, value[1], value[2], value[3]) < 1.5 and
                        jobs[ jobs["current"] ][index][5] > 0 then
                        DrawText3D(value[1], value[2], value[3] + 0.53,
                            "~w~Apasa ~y~E~w~ pentru a colecta " .. jobs[ jobs["current"] ]["numerecrestere"] .. "!",
                            0.5)
                        DrawText3D(value[1], value[2], value[3] + 0.03,
                            "~w~" ..
                            jobs[ jobs["current"] ][index][5] ..
                            " " .. jobs[ jobs["current"] ]["numerecrestere"] .. " ramase!",
                            0.5)
                        DrawMarker(9, vector3(value[1], value[2], value[3]), -200.0, 150.0, 0.0, 90.0, 0.0,
                            0.0, 0.5
                            , 0.5, 14.0, 255, 255, 255, 255, 0, 0, 2, false, jobs[ jobs["current"] ]["nume_imagie"],
                            jobs[ jobs["current"] ]["nume_imagie"], false)
                        if IsControlJustReleased(0, 38) and cutieinmana then
                            ExecuteCommand("e c")
                            ExecuteCommand(jobs[ jobs["current"] ]["commandpick"])
                            Wait(2000)
                            ExecuteCommand(jobs[ jobs["current"] ]["command"])
                            jobs[ jobs["current"] ][index][5] = jobs[ jobs["current"] ][index][5] - 1
                            jobs[ jobs["current"] ][index][6] = math.random(jobs[ jobs["current"] ][index][7][1],
                                jobs[ jobs["current"] ][index][7][2])
                            jobs[ jobs["current"] ][index][4] = true
                            jobs[ jobs["current"] ]["current"] = jobs[ jobs["current"] ]["current"] + 1
                        end
                    elseif Vdist(pos.x, pos.y, pos.z, value[1], value[2], value[3]) < 35.5 then

                        if jobs[ jobs["current"] ][index][6] > 0 then
                            DrawText3D(value[1], value[2], value[3] + 0.03,
                                "~w~" ..
                                jobs[ jobs["current"] ][index][6] ..
                                " secunde pana cand cresc inapoi " .. jobs[ jobs["current"] ]["numerecrestere"] .. "!",
                                0.5)
                        end
                        DrawMarker(9, vector3(value[1], value[2], value[3]), -200.0, 150.0, 0.0, 90.0, 0.0,
                            0.0, 0.5
                            , 0.5, 14.0, 255, 255, 255, 255, 0, 0, 2, false, jobs[ jobs["current"] ]["nume_imagie"],
                            jobs[ jobs["current"] ]["nume_imagie"], false)
                    end
                end
            end
        else
            for index, value in pairs(jobs) do
                if index ~= "current" then
                    if Vdist(pos.x, pos.y, pos.z, jobs[index]["startjob"][1],
                        jobs[index]["startjob"][2], jobs[index]["startjob"][3]) < 5.5 then
                        DrawText3D(jobs[index]["startjob"][1],
                            jobs[index]["startjob"][2], jobs[index]["startjob"][3] + 0.53,
                            "~w~Apasa E pentru a lua job-ul de " .. jobs[index]["jobname"] .. "!",
                            0.5)
                        --print(index)
                        if IsControlJustReleased(0, 38) then
                            TriggerServerCallback("getore", function(d)
                                if d >= jobs[index]["orenecesare"] then
                                    if d then
                                        print(index)
                                        jobs["current"] = index
                                        SetNewWaypoint(jobs[index]["locluatmasina"][1],
                                            jobs[index]["locluatmasina"][2])
                                        print(json.encode(jobs))
                                    end
                                else
                                    -- nu are ore
                                end
                            end)
                        end
                    end
                end
            end
        end
    end
end)


RegisterNetEvent("oprestepornestequst")
AddEventHandler('oprestepornestequst', function()
    learefacute = not learefacute
    if learefacute then
        ExecuteCommand("e box")
    else
        ExecuteCommand("e c")
    end
end)
