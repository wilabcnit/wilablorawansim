function [] = plot_scenario(ED_coord, SF_set, indoor_flag, GW_coord)

set(gcf, 'Color', 'w');
screen=get(0,'ScreenSize');
min_screen_dimension=min(screen(3:4));
set(gcf, 'Units', 'Pixels', 'OuterPosition', [50 50 50 50]);
title('EU868 MHz')
ylabel('Coordinate Y, m', 'FontSize', 28)
xlabel('Coordinate X, m', 'FontSize', 28)
input_num_GWs=1;
input_num_EDs=length(ED_coord);

%GWs
fig_scatter=scatter(GW_coord(:,1),GW_coord(:,2));
fig_scatter.Marker='square';
fig_scatter.MarkerFaceColor='k';   
for temp_i_num_GW=1:input_num_GWs 
   scatter(GW_coord(temp_i_num_GW,1),GW_coord(temp_i_num_GW,2), 400, 'MarkerFaceColor', 'y')
end
hold on
%EDs
fig_scatter=scatter(ED_coord(:,1),ED_coord(:,2));
for temp_i_num_ED=1:input_num_EDs 
    if SF_set(temp_i_num_ED)==5 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'k')
    elseif SF_set(temp_i_num_ED)==5 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'k')
    elseif SF_set(temp_i_num_ED)==6 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'r')
    elseif SF_set(temp_i_num_ED)==6 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'r')
    elseif SF_set(temp_i_num_ED)==7 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'b')
    elseif SF_set(temp_i_num_ED)==7 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'b')
    elseif SF_set(temp_i_num_ED)==8 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'k')
    elseif SF_set(temp_i_num_ED)==8 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'y', 'MarkerFaceColor', 'y')
    elseif SF_set(temp_i_num_ED)==9 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'g')
    elseif SF_set(temp_i_num_ED)==9 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'g')
    elseif SF_set(temp_i_num_ED)==10 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'm')    
    elseif SF_set(temp_i_num_ED)==10 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'm')
    elseif SF_set(temp_i_num_ED)==11 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'c')
    elseif SF_set(temp_i_num_ED)==11 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'c')
    elseif SF_set(temp_i_num_ED)==12 && indoor_flag(temp_i_num_ED)==1
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'o', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'y')
    elseif SF_set(temp_i_num_ED)==12 && indoor_flag(temp_i_num_ED)==0
    scatter(ED_coord(temp_i_num_ED,1),ED_coord(temp_i_num_ED,2), 100, 'd', 'MarkerFaceColor', 'w')
    end
end
title('EU868 MHz')
hold on