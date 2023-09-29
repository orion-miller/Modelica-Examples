model OM_Test
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-20, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 10, s_rel(start = 0.002), s_rel0 = 0.05) annotation(
    Placement(visible = true, transformation(origin = {-20, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1)  annotation(
    Placement(visible = true, transformation(origin = {-20, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Mechanics.Translational.Components.Damper damper(d=0.1) annotation(
    Placement(visible = true, transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Real natFreq;  
equation
  connect(spring.flange_b, fixed.flange) annotation(
    Line(points = {{-20, -30}, {-20, -40}}, color = {0, 127, 0}));
  connect(mass.flange_b, spring.flange_a) annotation(
    Line(points = {{-20, -2}, {-20, -10}}, color = {0, 127, 0}));
  connect(fixed.flange, damper.flange_b) annotation(
    Line(points = {{-20, -40}, {0, -40}, {0, -30}}, color = {0, 127, 0}));
  connect(damper.flange_a, mass.flange_b) annotation(
    Line(points = {{0, -10}, {0, -2}, {-20, -2}}, color = {0, 127, 0}));
    
    natFreq = sqrt(spring.c/mass.m); //Natural frequency

annotation(
    uses(Modelica(version = "4.0.0")));
end OM_Test;
