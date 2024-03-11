local ACF     = ACF
local Engines = ACF.Classes.Engines

Engines.Register("V8_Realism", {
	Name = "V8 Engine",
})

do -- Petrol Engines
	Engines.RegisterItem("5.7-V8", "V8_Realism", {
		Name		 	= "5.7L V8 Petrol",
		Description	 	= "Vroom",
		Model		 	= "models/engines/v8s.mdl",
		Sound		 	= "acf_base/engines/v8_petrolsmall.wav",
		Fuel		 	= { Petrol = true },
		Type		 	= "GenericPetrol",
		Mass		 	= 260,
		Torque		 	= 389,
		Displacement	= 5.7,
		FlywheelMass 	= 13,		-- Kg
		RPM = {
			Idle		= 800,
			Limit		= 5700,
		},
		Preview = {
			FOV = 100,
		},
	})

	Engines.RegisterItem("9.0-V8", "V8_Realism", {
		Name		 	= "9.0L V8 Petrol",
		Description	 	= "Thirsty, giant V8, for medium applications",
		Model		 	= "models/engines/v8m.mdl",
		Sound		 	= "acf_base/engines/v8_petrolmedium.wav",
		Fuel		 	= { Petrol = true },
		Type		 	= "GenericPetrol",
		Mass		 	= 400,
		Torque		 	= 576,
		Displacement	= 9,
		FlywheelMass 	= 18,		-- Kg
		RPM = {
			Idle		= 700,
			Limit		= 5500,
		},
		Preview = {
			FOV = 100,
		},
	})

	Engines.RegisterItem("18.0-V8", "V8_Realism", {
		Name		 	= "18.0L V8 Petrol",
		Description	 	= "American gasoline tank V8, good overall power and torque and fairly lightweight",
		Model		 	= "models/engines/v8l.mdl",
		Sound		 	= "acf_base/engines/v8_petrollarge.wav",
		Fuel		 	= { Petrol = true },
		Type		 	= "GenericPetrol",
		Mass		 	= 850,
		Torque		 	= 1848,
		Displacement	= 18,
		FlywheelMass 	= 120,		-- Kg
		RPM = {
			Idle		= 600,
			Limit		= 3000,
		},
		Preview = {
			FOV = 100,
		},
	})
end

do -- Diesel Engines
	Engines.RegisterItem("4.5-V8", "V8_Realism", {
		Name		 	= "4.5L V8 Diesel",
		Description	 	= "Light duty diesel v8, good for light vehicles that require a lot of torque",
		Model		 	= "models/engines/v8s.mdl",
		Sound		 	= "acf_base/engines/v8_dieselsmall.wav",
		Fuel		 	= { Diesel = true },
		Type		 	= "GenericDiesel",
		Mass		 	= 320,
		Torque		 	= 446,
		Displacement	= 4.5,
		FlywheelMass 	= 22,		-- Kg
		RPM = {
			Idle		= 800,
			Limit		= 4000,
		},
		Preview = {
			FOV = 100,
		},
	})

	Engines.RegisterItem("7.8-V8", "V8_Realism", {
		Name		 	= "7.8L V8 Diesel",
		Description	 	= "Redneck chariot material. Truck duty V8 diesel, has a good, wide powerband",
		Model		 	= "models/engines/v8m.mdl",
		Sound		 	= "acf_base/engines/v8_dieselmedium2.wav",
		Fuel		 	= { Diesel = true },
		Type		 	= "GenericDiesel",
		Mass		 	= 520,
		Torque		 	= 870,
		Displacement	= 7.8,
		FlywheelMass 	= 38,		-- Kg
		RPM = {
			Idle		= 650,
			Limit		= 3800,
		},
		Preview = {
			FOV = 100,
		},
	})

	Engines.RegisterItem("19.0-V8", "V8_Realism", {
		Name		 = "19.0L V8 Diesel",
		Description	 = "Heavy duty diesel V8, used in heavy construction equipment and tanks",
		Model		 = "models/engines/v8l.mdl",
		Sound		 = "acf_base/engines/v8_diesellarge.wav",
		Fuel		 = { Diesel = true },
		Type		 = "GenericDiesel",
		Mass		 = 1200,
		Torque		 = 3308,
		Displacement = 19,
		FlywheelMass = 350,
		RPM = {
			Idle	= 500,
			Limit	= 2000,
		},
		Preview = {
			FOV = 100,
		},
	})
end

ACF.SetCustomAttachment("models/engines/v8l.mdl", "driveshaft", Vector(-25.6, 0, 7.4), Angle(0, 90, 90))
ACF.SetCustomAttachment("models/engines/v8m.mdl", "driveshaft", Vector(-17.02, 0, 4.92), Angle(0, 90, 90))
ACF.SetCustomAttachment("models/engines/v8s.mdl", "driveshaft", Vector(-13.62, 0, 3.94), Angle(0, 90, 90))

local Models = {
	{ Model = "models/engines/v8l.mdl", Scale = 1.85 },
	{ Model = "models/engines/v8m.mdl", Scale = 1.25 },
	{ Model = "models/engines/v8s.mdl", Scale = 1 },
}

for _, Data in ipairs(Models) do
	local Scale = Data.Scale

	ACF.AddHitboxes(Data.Model, {
		Main = {
			Pos       = Vector(-1.25, 0, 7.5) * Scale,
			Scale     = Vector(27.5, 11.5, 16.5) * Scale,
			Sensitive = true
		},
		LeftBank = {
			Pos   = Vector(0, -6.5, 11) * Scale,
			Scale = Vector(25, 8, 11.25) * Scale,
			Angle = Angle(0, 0, 45)
		},
		RightBank = {
			Pos   = Vector(0, 6.5, 11) * Scale,
			Scale = Vector(25, 8, 11.25) * Scale,
			Angle = Angle(0, 0, -45)
		}
	})
end
