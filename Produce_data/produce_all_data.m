function [  ] = produce_all_data()
    for data_num = 1:6
        for experiment_num = 1:3
            produce_one_data( data_num, experiment_num)
        end
    end
    
    produce_one_data( 5, 4);
    produce_one_data( 6, 4);
end

