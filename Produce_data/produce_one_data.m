function [  ] = produce_one_data( data_num, experiment_num)
    switch data_num
        case 1
            load '../../Input Data/Adult/Adult.mat';   
            data_string = '../../Input Data/Adult/';
        case 2
            load '../../Input Data/Conect/Conect.mat';
            data_string = '../../Input Data/Conect/';
        case 3
            load '../../Input Data/mushroom/mushroom.mat';
            data_string = '../../Input Data/mushroom/';
        case 4
            load '../../Input Data/DNA/DNA.mat';
            data_string = '../../Input Data/DNA/';            
        case 5
            load '../../Input Data/Real Data/realdata2.mat';
            data_string = '../../Input Data/Real Data/';
        case 6
            load '../../Input Data/Real_Data_AAAI_balance/real_data_aaai_balance.mat';
            data_string = '../../Input Data/Real_Data_AAAI_balance/';
    end
    
    switch experiment_num
        case 1
            file_dir = sprintf('%s%s',data_string,'expertise_difficult_model/');
            produce_whitehill_data(file_dir, data, label);          
        case 2
            file_dir = sprintf('%s%s',data_string,'latent model/');
            produce_raykar_data(file_dir, data, label);                      
        case 3
            file_dir = sprintf('%s%s',data_string,'Clustering/');
            produce_yanyan_data(file_dir, data, label);                       
        case 4
            file_dir = sprintf('%s%s',data_string,'Real Label/');
            produce_real_data(file_dir, data, label, Y);
    end
end

