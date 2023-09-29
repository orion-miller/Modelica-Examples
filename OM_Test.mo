model OM_Test
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-48, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 40, s_rel(fixed = true, start = 0.06), s_rel0 = 0.05) annotation(
    Placement(visible = true, transformation(origin = {-38, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {38, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Mechanics.Translational.Components.Damper damper(d= 0.2) annotation(
    Placement(visible = true, transformation(origin = {-38, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Real natFreq;
  inner Modelica.Mechanics.MultiBody.World world annotation(
    Placement(visible = true, transformation(origin = {-88, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.PositionSensor positionSensor annotation(
    Placement(visible = true, transformation(origin = {-2, 24}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.SpeedSensor speedSensor annotation(
    Placement(visible = true, transformation(origin = {-2, 38}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sensors.AccSensor accSensor annotation(
    Placement(visible = true, transformation(origin = {-2, 52}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 100)  annotation(
    Placement(visible = true, transformation(origin = {10, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  connect(spring.flange_b, fixed.flange) annotation(
    Line(points = {{-48, 8}, {-48, -4}}, color = {0, 127, 0}));
  connect(fixed.flange, damper.flange_b) annotation(
    Line(points = {{-48, -4}, {-48, -16}}, color = {0, 127, 0}));
  natFreq = sqrt(spring.c/mass.m);
//Natural frequency
  connect(spring1.flange_a, mass.flange_b) annotation(
    Line(points = {{20, -4}, {28, -4}}, color = {0, 127, 0}));
  connect(spring.flange_a, spring1.flange_b) annotation(
    Line(points = {{-28, 8}, {-20, 8}, {-20, -4}, {0, -4}}, color = {0, 127, 0}));
  connect(damper.flange_a, spring1.flange_b) annotation(
    Line(points = {{-28, -16}, {-20, -16}, {-20, -4}, {0, -4}}, color = {0, 127, 0}));
  connect(positionSensor.flange, spring1.flange_b) annotation(
    Line(points = {{-10, 24}, {-14, 24}, {-14, -4}, {0, -4}}, color = {0, 127, 0}));
  connect(speedSensor.flange, spring1.flange_b) annotation(
    Line(points = {{-10, 38}, {-14, 38}, {-14, -4}, {0, -4}}, color = {0, 127, 0}));
  connect(accSensor.flange, spring1.flange_b) annotation(
    Line(points = {{-10, 52}, {-14, 52}, {-14, -4}, {0, -4}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end OM_Test;
