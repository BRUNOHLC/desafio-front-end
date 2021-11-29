After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, "_").tr("/", "_")

  if scenario.failed?
    tirar_foto(scenario.name.downcase!, "falhou")
  else
    tirar_foto(scenario.name.downcase!, "passou")
  end
end
