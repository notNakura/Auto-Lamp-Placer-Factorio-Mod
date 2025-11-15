script.on_event(defines.events.on_tick, function(event)
  if event.tick % 120 ~= 0 then return end  -- Cada 2 segundos

  for _, player in pairs(game.connected_players) do
    if not (player and player.valid and player.character) then goto continue end
    local surface = player.surface

    if surface.darkness < 0.5 then goto continue end  -- Si es de día, saltear

    local poles = surface.find_entities_filtered{
      area = {
        {player.position.x - 10, player.position.y - 10},
        {player.position.x + 10, player.position.y + 10}
      },
      type = "electric-pole"
    }

    for _, pole in pairs(poles) do
      local lamps = surface.find_entities_filtered{
        area = {
          {pole.position.x - 1, pole.position.y - 1},
          {pole.position.x + 1, pole.position.y + 1}
        },
        name = "small-lamp"
      }

      if #lamps == 0 and player.get_item_count("small-lamp") > 0 then
        surface.create_entity{
          name = "small-lamp",
          position = {pole.position.x + 1, pole.position.y},
          force = player.force
        }
        player.remove_item{name = "small-lamp", count = 1}
      end
    end

    ::continue::
  end
end)
