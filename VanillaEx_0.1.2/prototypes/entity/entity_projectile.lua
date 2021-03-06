local entity_projectile={}

entity_projectile[1]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[1].name="autocannon-projectile"
entity_projectile[1].piercing_damage=100
entity_projectile[1].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = { amount = 30 , type = "physical"}},
			{type = "damage",damage = { amount = 10 , type = "explosion"}}}}}
entity_projectile[1].final_action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}}}}

entity_projectile[2]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[2].name="explosive-autocannon-projectile"
entity_projectile[2].direction_only=false
entity_projectile[2].piercing_damage=0
entity_projectile[2].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
			{type = "create-entity",entity_name = "explosion"},}}}
entity_projectile[2].final_action={type = "area",radius=2,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 20, type = "explosion"}},{type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[3]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[3].name="flakcannon-projectile"
entity_projectile[3].direction_only=false
entity_projectile[3].piercing_damage=0
entity_projectile[3].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "explosion"},}}}
entity_projectile[3].final_action={type = "area",radius=4,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 8, type = "explosion"}},
			{type = "damage",damage = {amount = 2, type = "impact"}},
			{type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[4]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[4].name="cannon-arty-projectile"
entity_projectile[4].direction_only=false
entity_projectile[4].collision_box={{0, 0}, {0, 0}}
entity_projectile[4].piercing_damage=0
entity_projectile[4].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
			{type = "create-entity",entity_name = "big-explosion"},}}}
entity_projectile[4].final_action={type = "area",radius=6,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 80, type = "explosion"}},
			{type = "damage",damage = {amount = 80, type = "physical"}},
			{type = "create-entity",entity_name = "explosion"},}}}
			
entity_projectile[5]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[5].name="explosive-cannon-arty-projectile"
entity_projectile[5].direction_only=false
entity_projectile[5].collision_box={{0, 0}, {0, 0}}
entity_projectile[5].piercing_damage=0
entity_projectile[5].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
			{type = "create-entity",entity_name = "medium-explosion"},
			{type = "create-entity",entity_name = "big-explosion"},
			{type = "create-entity",entity_name = "massive-explosion"},}}}
entity_projectile[5].final_action={type = "area",radius=10,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 100, type = "explosion"}},
			{type = "create-entity",entity_name = "explosion"},}}}
			
entity_projectile[6]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[6].name="mb-apds-projectile"
entity_projectile[6].piercing_damage=800
entity_projectile[6].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = { amount = 600 , type = "physical"}},
			{type = "damage",damage = { amount = 200 , type = "impact"}},}}}
entity_projectile[6].final_action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}}}}

entity_projectile[7]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[7].name="mb-heat-projectile"
entity_projectile[7].piercing_damage=200
entity_projectile[7].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
			{type = "create-entity",entity_name = "explosion"},
			{type = "damage",damage = { amount = 400 , type = "physical"}},
			{type = "damage",damage = { amount = 100 , type = "explosion"}},}}}
entity_projectile[7].final_action={type = "area",radius=2,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 400, type = "explosion"}},
			{type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[8]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[8].name="mb-he-projectile"
entity_projectile[8].direction_only=false
entity_projectile[8].piercing_damage=0
entity_projectile[8].action={type = "direct",action_delivery ={type = "instant",target_effects ={
			{type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
			{type = "create-entity",entity_name = "big-explosion"},}}}
entity_projectile[8].final_action={type = "area",radius=6,action_delivery ={type = "instant",target_effects ={
			{type = "damage",damage = {amount = 200, type = "explosion"}},
			{type = "create-entity",entity_name = "explosion"},}}}
	
	
local thermonuclearwave = util.table.deepcopy(data.raw["projectile"]["atomic-bomb-wave"])
thermonuclearwave.name = "thermonuclear-weapon-wave"
thermonuclearwave.action[2].radius = 7
thermonuclearwave.action[2].action_delivery.target_effects.damage.amount = 2000

entity_projectile[9] = thermonuclearwave

local thermonuclearwavesmall = util.table.deepcopy(data.raw["projectile"]["atomic-bomb-wave"])
thermonuclearwavesmall.name = "thermonuclear-weapon-wave-small"
thermonuclearwavesmall.action[2].radius = 7
thermonuclearwavesmall.action[2].action_delivery.target_effects.damage.amount = 1200

entity_projectile[10] = thermonuclearwavesmall


local thermonuclear = util.table.deepcopy(data.raw["projectile"]["atomic-rocket"])
thermonuclear.name = "thermonuclear-weapon"
thermonuclear.acceleration = 0.001
thermonuclear.action.action_delivery.target_effects[1].repeat_count = 1000
thermonuclear.action.action_delivery.target_effects[1].speed_from_center = 0.6
thermonuclear.action.action_delivery.target_effects[3].damage.amount = 4000
thermonuclear.action.action_delivery.target_effects[5].action.repeat_count = 4000
thermonuclear.action.action_delivery.target_effects[5].action.radius = 90
thermonuclear.action.action_delivery.target_effects[5].action.action_delivery.projectile = "thermonuclear-weapon-wave"
thermonuclear.action.action_delivery.target_effects[6] = 
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 2000,
              radius = 200,
              action_delivery =
              {
                type = "projectile",
                projectile = "thermonuclear-weapon-wave-small",
                starting_speed = 0.5
              }
            }
          }


entity_projectile[11] = thermonuclear


local nuclear_warhead = util.table.deepcopy(data.raw["artillery-projectile"]["artillery-projectile"])
nuclear_warhead.name = "atomic-artillery-projectile"
nuclear_warhead.action.action_delivery.target_effects[4].scale = 4
nuclear_warhead.action.action_delivery.target_effects[1] = 
          {
              repeat_count = 100,
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
          }
table.insert(nuclear_warhead.action.action_delivery.target_effects, 
          {
            type = "damage",
            damage = {amount = 400, type = "explosion"}
          })
table.insert(nuclear_warhead.action.action_delivery.target_effects, 
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 2000,
              radius = 35,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5
              }
            }
          })
		  
entity_projectile[12] = nuclear_warhead

local thermonuclear_warhead = util.table.deepcopy(data.raw["artillery-projectile"]["artillery-projectile"])
thermonuclear_warhead.name = "thermonuclear-artillery-projectile"
thermonuclear_warhead.action.action_delivery.target_effects[4].scale = 32
thermonuclear_warhead.action.action_delivery.target_effects[1] = 
          {
              repeat_count = 1000,
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.6,
              speed_deviation = 0.2
          }
table.insert(thermonuclear_warhead.action.action_delivery.target_effects, 
          {
            type = "damage",
            damage = {amount = 4000, type = "explosion"}
          })
table.insert(thermonuclear_warhead.action.action_delivery.target_effects, 
		  {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 4000,
              radius = 90,
              action_delivery =
              {
                type = "projectile",
                projectile = "thermonuclear-weapon-wave",
                starting_speed = 0.5
              }
            }
          })
table.insert(thermonuclear_warhead.action.action_delivery.target_effects,
		  {
            type = "nested-result",
            action =
			{
              type = "area",
              target_entities = false,
              repeat_count = 2000,
              radius = 200,
              action_delivery =
              {
                type = "projectile",
                projectile = "thermonuclear-weapon-wave-small",
                starting_speed = 0.5
              }
			}
          })
		  
entity_projectile[13] = thermonuclear_warhead
	
entity_projectile[0]=#entity_projectile -- Finds size of table (# of projectiles)

for e=1,entity_projectile[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
entity_projectile[e],
})
end
			
			
			
			
			
			
			
			
			
			
			
			
			
			