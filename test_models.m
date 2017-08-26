function [  ] = test_models( experiment_num )
    Initialization();

    repeat_num=total_repeat_num;

    file_name=sprintf('%s%s',output_file_dir,'W_LFC.mat');
    load(file_name);
    file_name=sprintf('%s%s',output_file_dir,'W_PC.mat');
    load(file_name);
    file_name=sprintf('%s%s',output_file_dir,'W_MV.mat');
    load(file_name);
    file_name=sprintf('%s%s',output_file_dir,'W_M3V.mat');
    load(file_name);
    file_name=sprintf('%s%s',output_file_dir,'W_LCM.mat');
    load(file_name);

    total_iteration_num=size(W_LCM,1);      

    Result_LFC=zeros(total_iteration_num,1);
    for t=1:total_iteration_num    
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',t,'.mat');
        load(file_name);
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_test_',t,'.mat');
        load(file_name);
        [n d]=size(X_test);
        X_test(:,d+1)=ones(n,1);
        target=(0.5*Y_test+0.5)';
        predict_label=zeros(n,1);
        
        for i=1:n
            predict_label(i,1)=W_LFC(t,:)*X_test(i,:)';
            if(predict_label(i,1)*Y_test(i)>0)
                Result_LFC(t)=Result_LFC(t)+1;
            elseif(predict_label(i,1)*Y_test(i)==0)
                Result_LFC(t)=Result_LFC(t)+0.5;
            end
        end
        [tpr,fpr] = roc(target,predict_label');
        point_num = size(tpr,2);
        if tpr(point_num)~=1 || fpr(point_num)~=1
            tpr(1,point_num+1) = 1;
            fpr(1,point_num+1) = 1;
        end
        AUC_LFC(t) = trapz(fpr,tpr);
        Result_LFC(t)= Result_LFC(t)/n;
    end

    Result_PC=zeros(total_iteration_num,1);
    for t=1:total_iteration_num  
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',t,'.mat');
        load(file_name);
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_test_',t,'.mat');
        load(file_name);
        
        [n d]=size(X_test);
        X_test(:,d+1)=ones(n,1);
        target=(0.5*Y_test+0.5)';
        predict_label=zeros(n,1);
        
        for i=1:n
             predict_label(i,1)=W_PC(t,:)*X_test(i,:)';
            if(predict_label(i,1)*Y_test(i)>0)
                Result_PC(t)=Result_PC(t)+1;
            elseif(predict_label(i,1)*Y_test(i)==0)
                Result_PC(t)=Result_PC(t)+0.5;
            end
        end
        [tpr,fpr] = roc(target,predict_label');
        point_num = size(tpr,2);
        if tpr(point_num)~=1 || fpr(point_num)~=1
            tpr(1,point_num+1) = 1;
            fpr(1,point_num+1) = 1;
        end
        AUC_PC(t) = trapz(fpr,tpr);
        Result_PC(t)= Result_PC(t)/n;
    end

    Result_MV=zeros(total_iteration_num,1);
    for t=1:total_iteration_num 
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',t,'.mat');
        load(file_name);
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_test_',t,'.mat');
        load(file_name);
        
        [n d]=size(X_test);
        X_test(:,d+1)=ones(n,1);
        target=(0.5*Y_test+0.5)';
        predict_label=zeros(n,1);      
        
       
        for i=1:n
            predict_label(i,1)=W_MV(t,:)*X_test(i,:)';
            if(predict_label(i,1)*Y_test(i)>0)
                Result_MV(t)=Result_MV(t)+1;
            elseif(predict_label(i,1)*Y_test(i)==0)
                Result_MV(t)=Result_MV(t)+0.5;
            end
        end
        [tpr,fpr] = roc(target,predict_label');
        point_num = size(tpr,2);
        if tpr(point_num)~=1 || fpr(point_num)~=1
            tpr(1,point_num+1) = 1;
            fpr(1,point_num+1) = 1;
        end
        AUC_MV(t) = trapz(fpr,tpr);
        Result_MV(t)= Result_MV(t)/n;
    end

    Result_M3V=zeros(total_iteration_num,1);
    for t=1:total_iteration_num   
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',t,'.mat');
        load(file_name);
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_test_',t,'.mat');
        load(file_name);
        [n d]=size(X_test);
        X_test(:,d+1)=ones(n,1);
        target=(0.5*Y_test+0.5)';
        predict_label=zeros(n,1);
              
        for i=1:n
            predict_label(i,1)=W_M3V(t,:)*X_test(i,:)';
            if(predict_label(i,1)*Y_test(i)>0)
                Result_M3V(t)=Result_M3V(t)+1;
            elseif(predict_label(i,1)*Y_test(i)==0)
                Result_M3V(t)=Result_M3V(t)+0.5;
            end
        end
        [tpr,fpr] = roc(target,predict_label');
        point_num = size(tpr,2);
        if tpr(point_num)~=1 || fpr(point_num)~=1
            tpr(1,point_num+1) = 1;
            fpr(1,point_num+1) = 1;
        end
        AUC_M3V(t) = trapz(fpr,tpr);
        Result_M3V(t)= Result_M3V(t)/n;
    end    

    Result_LCM=zeros(total_iteration_num,1);
    for t=1:total_iteration_num
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',t,'.mat');
        load(file_name);
        file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_test_',t,'.mat');
        load(file_name);
        
        [n d]=size(X_test);
        X_test(:,d+1)=ones(n,1);
        target=(0.5*Y_test+0.5)';
        predict_label=zeros(n,1);
               
        for i=1:n
            predict_label(i,1)=W_LCM(t,:)*X_test(i,:)';
            if(predict_label(i,1)*Y_test(i)>0)
                Result_LCM(t)=Result_LCM(t)+1;
            elseif(predict_label(i,1)*Y_test(i)==0)
                Result_LCM(t)=Result_LCM(t)+0.5;
            end
        end
        [tpr,fpr] = roc(target,predict_label');
        point_num = size(tpr,2);
        if tpr(point_num)~=1 || fpr(point_num)~=1
            tpr(1,point_num+1) = 1;
            fpr(1,point_num+1) = 1;
        end
        AUC_LCM(t) = trapz(fpr,tpr);
        Result_LCM(t)= Result_LCM(t)/n;
    end

    
    n=size(Result_LCM,1);
    repeat_num = n;
    n=n/repeat_num;
    for i=1:n
        acc_LFC(i)=mean(Result_LFC( (i-1)*repeat_num+1:i*repeat_num));
        acc_PC(i)=mean(Result_PC( (i-1)*repeat_num+1:i*repeat_num));
        acc_MV(i)=mean(Result_MV( (i-1)*repeat_num+1:i*repeat_num));
        acc_M3V(i)=mean(Result_M3V( (i-1)*repeat_num+1:i*repeat_num));

        acc_Soft_LCM(i)=mean( Result_LCM( (i-1)*repeat_num+1:i*repeat_num) );

        std_LFC(i)=std(Result_LFC( (i-1)*repeat_num+1:i*repeat_num));
        std_PC(i)=std(Result_PC( (i-1)*repeat_num+1:i*repeat_num));
        std_MV(i)=std(Result_MV( (i-1)*repeat_num+1:i*repeat_num));
        std_M3V(i)=std(Result_M3V( (i-1)*repeat_num+1:i*repeat_num));

        std_Soft_LCM(i)=std( Result_LCM( (i-1)*repeat_num+1:i*repeat_num) );

    end

    MV_result = sprintf('MV-LFC:%.4f+%.4f', acc_MV,std_MV)
    M3V_result = sprintf('M3V-LFC:%.4f+%.4f', acc_M3V,std_M3V)
    LFC_result = sprintf('LC Model:%.4f+%.4f', acc_LFC,std_LFC)
    PC_result = sprintf('PC Model:%.4f+%.4f', acc_PC,std_PC)
    Soft_LCM_result = sprintf('QS-LFC:%.4f+%.4f', acc_Soft_LCM,std_Soft_LCM)
    
    
    file_name=sprintf('%s%s',output_file_dir,'plot_data.mat');
    save(file_name,'*');
end

