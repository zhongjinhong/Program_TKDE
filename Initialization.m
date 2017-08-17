total_repeat_num=100;
begin_num=1;
end_num=1;
switch experiment_num   
%%%%%%%%%%%%%%%%%%%%% test accuracy comparison  %%%%%%%%%%%%%%%%%%%%%%%%%%    
    case 1
        input_file_dir='../Input Data/Adult/Clustering/';
        output_file_dir='../Output Data/Adult/Clustering/';
    case 2
        input_file_dir='../Input Data/Adult/latent model/';
        output_file_dir='../Output Data/Adult/latent model/';
    case 3
        input_file_dir='../Input Data/Adult/expertise_difficult_model/';
        output_file_dir='../Output Data/Adult/expertise_difficult_model/';
        
    case 4
        input_file_dir='../Input Data/Conect/Clustering/';    
        output_file_dir='../Output Data/Conect/Clustering/';
    case 5
        input_file_dir='../Input Data/Conect/latent model/';
        output_file_dir='../Output Data/Conect/latent model/';
    case 6
        input_file_dir='../Input Data/Conect/expertise_difficult_model/';
        output_file_dir='../Output Data/Conect/expertise_difficult_model/';
                
    case 7
        input_file_dir='../Input Data/mushroom/Clustering/';
        output_file_dir='../Output Data/mushroom/Clustering/';
    case 8
        input_file_dir='../Input Data/mushroom/latent model/';
        output_file_dir='../Output Data/mushroom/latent model/';       
    case 9
        input_file_dir='../Input Data/mushroom/expertise_difficult_model/';
        output_file_dir='../Output Data/mushroom/expertise_difficult_model/';
        
    case 10
        input_file_dir='../Input Data/DNA/Clustering/';
        output_file_dir='../Output Data/DNA/Clustering/';
    case 11
        input_file_dir='../Input Data/DNA/latent model/';
        output_file_dir='../Output Data/DNA/latent model/'; 
    case 12
        input_file_dir='../Input Data/DNA/expertise_difficult_model/';
        output_file_dir='../Output Data/DNA/expertise_difficult_model/';
        title_name='test_data(Whitehill''s Data)';         
        
    case 21
        input_file_dir='../Input Data/Real Data/Clustering/';
        output_file_dir='../Output Data/Real Data/Clustering/';
    case 22
        input_file_dir='../Input Data/Real Data/latent model/';
        output_file_dir='../Output Data/Real Data/latent model/';
    case 23
        input_file_dir='../Input Data/Real Data/expertise_difficult_model/';
        output_file_dir='../Output Data/Real Data/expertise_difficult_model/';
    case 24
        input_file_dir='../Input Data/Real Data/Real Label/';
        output_file_dir='../Output Data/Real Data/Real Label/';
    
    case 25
        input_file_dir='../Input Data/Real_Data_AAAI_balance/Clustering/';
        output_file_dir='../Output Data/Real_Data_AAAI_balance/Clustering/';       
    case 26
        input_file_dir='../Input Data/Real_Data_AAAI_balance/latent model/';
        output_file_dir='../Output Data/Real_Data_AAAI_balance/latent model/';                  
    case 27
        input_file_dir='../Input Data/Real_Data_AAAI_balance/expertise_difficult_model/';
        output_file_dir='../Output Data/Real_Data_AAAI_balance/expertise_difficult_model/';       
    case 28
        input_file_dir='../Input Data/Real_Data_AAAI_balance/Real Label/';
        output_file_dir='../Output Data/Real_Data_AAAI_balance/Real Label/';
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        
%%%%%%%%%%%%%%%%%%%%%%%%%%% Robustness to Systematic Noise %%%%%%%%%%%%%%%%   
%  Subset Systematic Noise Dataset        
    case 40
        input_file_dir ='../Input Data/system_error/';
        output_file_dir='../Output Data/system_error/';
        total_repeat_num=100;end_num=11; 
        title_name='Case 1: Noisy annotators make errors on certain subsets of the data set '; 
        xlabel_name='# annotators with systematic noise / # normal annotators';
%  Linear Bias Systematic Noise Dataset       
    case 30
        input_file_dir='../Input Data/system_error_new/';
        output_file_dir='../Output Data/system_error_new/';    
        title_name='Linear Bias Systematic Noise Dataset';
        total_repeat_num=100;end_num=11;
        xlabel_name='# annotators with systematic noise / # normal annotators';
%  Nonlinear Bias Systematic Noise Dataset
    case 31
        input_file_dir='../Input Data/system_error_new2/';
        output_file_dir='../Output Data/system_error_new2/';    
        title_name='Nonlinear Bias Systematic Noise Dataset';
        total_repeat_num=100;end_num=11;
        xlabel_name='# annotators with systematic noise / # normal annotators';        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%% Robustness to Random Noise %%%%%%%%%%%%%%%%%%%%   
    case 45
        input_file_dir ='../Input Data/Real Data/Clustering/';
        output_file_dir='../Output Data/Real Data Random1/Clustering/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Clustering data)';
        xlabel_name='# annotators with random noise / # normal annotators';
    case 46
        input_file_dir ='../Input Data/Real Data/latent model/';
        output_file_dir='../Output Data/Real Data Random1/latent model/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Raykar''s Data)'; 
        xlabel_name='# annotators with random noise / # normal annotators';
    case 47
        input_file_dir ='../Input Data/Real Data/expertise_difficult_model/';
        output_file_dir='../Output Data/Real Data Random1/expertise_difficult_model/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Whitehill''s Data)'; 
        xlabel_name='# annotators with random noise / # normal annotators';
    case 48
        input_file_dir ='../Input Data/Real Data/Real Label/';
        output_file_dir='../Output Data/Real Data Random1/Real Label/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Real Label)';  
        xlabel_name='# annotators with random noise / # normal annotators';

%%%%%%%%%%%%%%%%%%%%%%%% Robustness to Concensus Noise %%%%%%%%%%%%%%%%%%%% 
    case 49
        input_file_dir ='../Input Data/Real Data/Clustering/';
        output_file_dir='../Output Data/Real Data Random2/Clustering/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Clustering Data)'; 
        xlabel_name='# annotators with concensus noise / # normal annotators';
    case 50
        input_file_dir ='../Input Data/Real Data/latent model/';
        output_file_dir='../Output Data/Real Data Random2/latent model/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Raykar''s Data)'; 
        xlabel_name='# annotators with concensus noise / # normal annotators';
    case 51
        input_file_dir ='../Input Data/Real Data/expertise_difficult_model/';
        output_file_dir='../Output Data/Real Data Random2/expertise_difficult_model/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Whitehill''s Data)'; 
        xlabel_name='# annotators with concensus noise / # normal annotators';
    case 52
        input_file_dir ='../Input Data/Real Data/Real Label/';
        output_file_dir='../Output Data/Real Data Random2/Real Label/';
        total_repeat_num=100;end_num=11;
        title_name='Twitter Topic(Real Label)';  
        xlabel_name='# annotators with concensus noise / # normal annotators';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%           
end
