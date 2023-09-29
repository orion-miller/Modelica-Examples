model OM_Test
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-20, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 10, s_rel(start = 0.002), s_rel0 = 0.05) annotation(
    Placement(visible = true, transformation(origin = {-20, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(spring.flange_b, fixed.flange) annotation(
    Line(points = {{-20, -30}, {-20, -40}}, color = {0, 127, 0}));
  connect(mass.flange_b, spring.flange_a) annotation(
    Line(points = {{-20, -2}, {-20, -10}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end OM_Test;
