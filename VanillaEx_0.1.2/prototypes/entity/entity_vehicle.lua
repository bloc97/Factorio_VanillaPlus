local entity_vehicle={}

entity_vehicle[2]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[2].name="tank-arty"
entity_vehicle[2].icon=toicon(entity_vehicle[2].name)
entity_vehicle[2].minable.result=entity_vehicle[2].name
entity_vehicle[2].max_health=1600
entity_vehicle[2].resistances={{type = "fire",decrease=15,percent=50},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=30},{type = "explosion",decrease=15,percent=30},{type = "acid",decrease=10,percent=20}}
entity_vehicle[2].consumption="1000kW"
entity_vehicle[2].braking_power="400kW"
entity_vehicle[2].burner.effectivity=0.65
entity_vehicle[2].effectivity=0.6
entity_vehicle[2].burner.fuel_inventory_size=3
entity_vehicle[2].terrain_friction_modifier=0.2
entity_vehicle[2].friction=0.003
entity_vehicle[2].turret_rotation_speed= 0.15 / 60
entity_vehicle[2].rotation_speed=0.0020
entity_vehicle[2].weight=38000
entity_vehicle[2].inventory_size=100
entity_vehicle[2].guns={"tank-cannon-arty","tank-machine-gun"}
entity_vehicle[2].turret_animation.layers[1].filename=toentity("tank").."turret-single.png"
entity_vehicle[2].turret_animation.layers[1].hr_version = util.table.deepcopy(entity_vehicle[2].turret_animation.layers[1])

entity_vehicle[3]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[3].name="tank-auto"
entity_vehicle[3].icon=toicon(entity_vehicle[3].name)
entity_vehicle[3].minable.result=entity_vehicle[3].name
entity_vehicle[3].max_health=1200
entity_vehicle[3].resistances={{type = "fire",decrease=15,percent=50},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=60},{type = "explosion",decrease=15,percent=30},{type = "acid",decrease=10,percent=20}}
entity_vehicle[3].consumption="500kW"
entity_vehicle[3].braking_power="400kW"
entity_vehicle[3].burner.effectivity=0.75
entity_vehicle[3].effectivity=0.6
entity_vehicle[3].burner.fuel_inventory_size=2
entity_vehicle[3].terrain_friction_modifier=0.2
entity_vehicle[3].friction=0.0015
entity_vehicle[3].turret_rotation_speed=0.45 / 60
entity_vehicle[3].rotation_speed=0.0035
entity_vehicle[3].weight=18000
entity_vehicle[3].inventory_size=60
entity_vehicle[3].guns={"tank-autocannon","tank-flakcannon","tank-machine-gun"}
entity_vehicle[3].turret_animation.layers[1].filename=toentity("tank").."auto-turret.png"
entity_vehicle[3].turret_animation.layers[1].hr_version = util.table.deepcopy(entity_vehicle[3].turret_animation.layers[1])

entity_vehicle[4]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[4].name="car-armour"
entity_vehicle[4].icon=toicon(entity_vehicle[4].name)
entity_vehicle[4].minable.result=entity_vehicle[4].name
entity_vehicle[4].max_health=1000
entity_vehicle[4].resistances={{type = "fire",decrease=15,percent=50},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=50},{type = "explosion",decrease=15,percent=20},{type = "acid",decrease=10,percent=30}}
entity_vehicle[4].consumption="400kW"
entity_vehicle[4].braking_power="400kW"
entity_vehicle[4].effectivity=0.6
entity_vehicle[4].burner.effectivity=0.80
entity_vehicle[4].burner.fuel_inventory_size=2
entity_vehicle[4].terrain_friction_modifier=0.05
entity_vehicle[4].friction=0.0014
entity_vehicle[4].turret_rotation_speed=0.55 / 60
entity_vehicle[4].rotation_speed=0.0035
entity_vehicle[4].weight=15000
entity_vehicle[4].inventory_size=140
entity_vehicle[4].guns={"car-gatling-gun","tank-machine-gun"}
entity_vehicle[4].turret_animation.layers[1].filename=toentity("tank").."turret-stub.png"
entity_vehicle[4].turret_animation.layers[1].hr_version = util.table.deepcopy(entity_vehicle[4].turret_animation.layers[1])

entity_vehicle[5]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[5].name="car-truck"
entity_vehicle[5].icon=toicon(entity_vehicle[5].name)
entity_vehicle[5].minable.result=entity_vehicle[5].name
entity_vehicle[5].max_health=800
entity_vehicle[5].resistances={{type = "fire",decrease=5,percent=50},{type = "physical",decrease=5,percent=20},{type = "impact",decrease=50,percent=30},{type = "explosion",decrease=10,percent=10},{type = "acid",decrease=5,percent=10}}
entity_vehicle[5].consumption="200kW"
entity_vehicle[5].braking_power="200kW"
entity_vehicle[5].effectivity=0.5
entity_vehicle[5].burner.effectivity=0.70
entity_vehicle[5].burner.fuel_inventory_size=2
entity_vehicle[5].terrain_friction_modifier=0
entity_vehicle[5].friction=0.001
entity_vehicle[5].turret_rotation_speed=0.55 / 60
entity_vehicle[5].rotation_speed=0.01
entity_vehicle[5].weight=1500
entity_vehicle[5].inventory_size=160
entity_vehicle[5].guns=nil
entity_vehicle[5].turret_animation=nil


local mbt = util.table.deepcopy(data.raw["car"]["tank"])

mbt.name="tank-mb"
mbt.icon=toicon(mbt.name)
mbt.minable.result=mbt.name
mbt.max_health=3500
mbt.resistances={{type = "fire",decrease=15,percent=75},{type = "physical",decrease=20,percent=70},{type = "impact",decrease=50,percent=80},{type = "explosion",decrease=30,percent=70},{type = "acid",decrease=15,percent=55}}
mbt.consumption="1400kW"
mbt.braking_power="500kW"
mbt.burner.effectivity=0.85
mbt.effectivity=0.6
mbt.burner.fuel_inventory_size=5
mbt.terrain_friction_modifier=0.1
mbt.friction=0.002
mbt.turret_rotation_speed=0.45 / 60
mbt.rotation_speed=0.0055
mbt.weight=40000
mbt.inventory_size=100
mbt.guns={"tank-mb-cannon","tank-rocket","tank-machine-gun"}
mbt.turret_animation.layers[1].filename=toentity("tank").."mbt-turret.png"
mbt.turret_animation.layers[1].hr_version.filename = toentity("tank").."hr-mbt-turret.png"

mbt.animation.layers[1].stripes[1].filename = toentity("tank").."mbt-base-1.png"
mbt.animation.layers[1].stripes[2].filename = toentity("tank").."mbt-base-2.png"
mbt.animation.layers[1].stripes[3].filename = toentity("tank").."mbt-base-3.png"
mbt.animation.layers[1].stripes[4].filename = toentity("tank").."mbt-base-4.png"

mbt.animation.layers[1].hr_version.stripes[1].filename = toentity("tank").."hr-mbt-base-1.png"
mbt.animation.layers[1].hr_version.stripes[2].filename = toentity("tank").."hr-mbt-base-2.png"
mbt.animation.layers[1].hr_version.stripes[3].filename = toentity("tank").."hr-mbt-base-3.png"
mbt.animation.layers[1].hr_version.stripes[4].filename = toentity("tank").."hr-mbt-base-4.png"

entity_vehicle[6]=mbt

entity_vehicle[0]=#entity_vehicle -- Finds size of table (# of vehicles)

for i=2,entity_vehicle[0] do -- Generates icons and minable.result using name
entity_vehicle[i].icon=toicon(entity_vehicle[i].name)
entity_vehicle[i].minable.result=entity_vehicle[i].name
end

for e=2,entity_vehicle[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
entity_vehicle[e],
})
end

