clear;
prompt = sprintf('Which contrast indicator do you want to choose?\n1.test_accuracy 2.robustness\n');
contrast_indicator = input(prompt,'s');
switch contrast_indicator   
    case '1'
        contrast_indicator = 'test_accuracy';
        contrast_indicator_num = 1;
        disp(['You select ', contrast_indicator]);

        prompt = sprintf('Which data source do you want to choose?\n1.Adult 2.Conect 3.Mushroom 4.DNA 5.Twitter Topic 6.Twitter NER\n');
        data_num = input(prompt,'s');
        switch data_num
            case '1'
                data_source = 'Adult';
                data_num = 1;
            case '2'
                data_source = 'Conect';
                data_num = 2;
            case '3'
                data_source = 'Mushroom';
                data_num = 3;
            case '4'
                data_source = 'DNA';
                data_num = 4;
            case '5'
                data_source = 'Twitter Topic';
                data_num = 5;
            case '6'
                data_source = 'Twitter NER';  
                data_num = 6;
            otherwise
                disp('please input 1, 2, 3 or 4');
                return;
        end
        disp(['You select ', data_source]);  
        
        
        prompt = sprintf('Which labeling method do you want to choose?\n1.Clustering data 2.Raykar''s data 3.Whitehill''s data 4.Real label\n');
        label_method_num = input(prompt,'s');
        switch label_method_num   
            case '1'
                label_method = 'Clustering data';
                label_method_num = 1;
            case '2'
                label_method = 'Raykar''s data';
                label_method_num = 2;
            case '3'
                label_method = 'Whitehill''s data';
                label_method_num = 3;
            case '4'
                if strcmp(data_source, 'Twitter Topic') || strcmp(data_source, 'Twitter NER')
                    label_method = 'Real label';
                    label_method_num = 4;
                else
                    disp([data_source ' does not have real crowdsourcing labels']);
                    return;
                end
            otherwise
                disp('please input 1, 2, 3 or 4');
                return;
        end
        disp(['You select ', label_method]);
        
        if data_num < 5
            experiment_num = (data_num-1)*3+label_method_num;
        else
            experiment_num = 20+(data_num-5)*4+label_method_num;
        end
        train_models(experiment_num);
        test_models(experiment_num);
        
    case '2'
        contrast_indicator = 'robustness';
        contrast_indicator_num = 3;
        disp(['The data source is : ', contrast_indicator]);
        data_source = 'Twitter Topic';
        disp(['The data source is: ', data_source]);
        
        
        prompt = sprintf('Which kind of noise do you want to choose?\n1.Random Noise 2.Concensus Noise 3.Systematic Noise\n');
        noise_kind_num = input(prompt,'s');
        switch noise_kind_num
            case '1'
                noise_kind = 'Random Noise';
                noise_kind_num = 1;
            case '2'
                noise_kind = 'Concensus Noise';
                noise_kind_num = 2;
            case '3'
                noise_kind = 'Systematic Noise';
                noise_kind_num = 3;
            otherwise
                disp('please input 1, 2, or 3');
                return;
        end
        disp(['You select ', noise_kind]);          
        
        
        if noise_kind_num == 3
            prompt = sprintf('Which kind of systematic noise do you want to choose?\n1.Subset Systematic Noise 2.Linear Bias Systematic Noise 3.Nonlinear Bias Systematic Noise\n');
            system_noise_kind = input(prompt,'s');
            switch system_noise_kind   
                case '1'
                    train_models(40);
                    handle_result_robustness(40);
                case '2'
                    train_models(30);
                    handle_result_robustness(30);                    
                case '3'
                    train_models(31);
                    handle_result_robustness(31);                    
                otherwise
                    disp('please input 1, 2, or 3');
                    return;
            end            
        else
            prompt = sprintf('Which labeling method do you want to choose?\n1.Clustering data 2.Raykar''s data 3.Whitehill''s data 4.Real label\n');
            label_method_num = input(prompt,'s');
            switch label_method_num   
                case '1'
                    label_method = 'Clustering data';
                    label_method_num = 1;
                case '2'
                    label_method = 'Raykar''s data';
                    label_method_num = 2;
                case '3'
                    label_method = 'Whitehill''s data';
                    label_method_num = 3;
                case '4'
                    label_method = 'Real label';
                    label_method_num = 4;
                otherwise
                    disp('please input 1, 2, 3 or 4');
                    return;
            end
            disp(['You select ', label_method]);             
            
            experiment_num = 44 + (noise_kind_num-1)*4 + label_method_num;
            train_models(experiment_num);
            handle_result_robustness(experiment_num);
        end
    otherwise
        disp('please input 1, or 2');
        return;
end