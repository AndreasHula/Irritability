X = [0 1 2 ];% 


IDisapp = zeros(1,4);
n = 31;
for j = 1:(length(X))
fid =fopen(['BrooksAvRepFlexible' int2str(X(j)) '.bin'],'r');
for i = 1:n
    InvestorLikelihoods(1,i+(j-1)*n)=fread(fid,1,'double');
    InvestorToM(1,i+(j-1)*n)=fread(fid,1,'int32');
    InvestorGuilt(1,i+(j-1)*n)=fread(fid,1,'int32');
    InvestorAversion(1,i+(j-1)*n)=fread(fid,1,'int32');        
    InvestorPlan(1,i+(j-1)*n)=fread(fid,1,'int32');
    InvestorTemp(1,i+(j-1)*n)=fread(fid,1,'double');
    InvestorShift(1,i+(j-1)*n)=fread(fid,1,'int32');
    InvestorIrritability(1,i+(j-1)*n)=fread(fid,1,'int32');
    %InvestorRepair(1,i+(j)*n)=fread(fid,1,'int32');
    TrusteeLikelihoods(1,i+(j-1)*n)=fread(fid,1,'double');
    TrusteeToM(1,i+(j-1)*n)=fread(fid,1,'int32');
    TrusteeGuilt(1,i+(j-1)*n)=fread(fid,1,'int32');
    TrusteeAversion(1,i+(j-1)*n)=fread(fid,1,'int32'); 
    TrusteePlan(1,i+(j-1)*n)=fread(fid,1,'int32');
    TrusteeTemp(1,i+(j-1)*n)=fread(fid,1,'double');
    TrusteeShift(1,i+(j-1)*n)=fread(fid,1,'int32');
    TrusteeIrritability(1,i+(j-1)*n)=fread(fid,1,'int32');
    %TrusteeRepair(1,i+(j)*n)=fread(fid,1,'int32');
    for t = 1:10
        for k = 1:5
            MIExp(i+(j-1)*n,t,k) =  fread(fid,1,'double');
            for g = 1:3
                MIBelief(k,g,i+(j-1)*n,t)=  fread(fid,1,'double');            
            end
            for irr = 1:2
                MIIrr(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                MIShift(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                 MIShift(k+1,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
            end
            for g = 1:3     
                 for irr = 1:2
                     for act = 1:5
                         MIAct(act,t,g,k,irr,i+(j-1)*n) = fread(fid,1,'double');
                     end
                 end
            end
        end
         %if(t < 10 & MDisapp(j,i,t)>0)
         %   MIDisapp(1,i+(j-1)*n)=1;
        %end       
    end
    for t = 1:10
        for k = 1:5        
            MTExp(i+(j-1)*n,t,k) =  fread(fid,1,'double');
            for g = 1:3
                MTBelief(k,g,i+(j-1)*n,t)=  fread(fid,1,'double');            
            end
            for irr = 1:2
                MTIrr(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                MTShift(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                MTShift(k+1,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
            end
            for g = 1:3     
                 for irr = 1:2
                     for act = 1:5
                         MTAct(act,t,g,k,irr,i+(j-1)*n) = fread(fid,1,'double');
                     end
                 end
            end            
        end
    end
end
    fclose(fid);
end
j = 1;
fid =fopen(['BrooksAvRepFlexibleLevel0.bin'],'r');
for i = 1:93
    HInvestorLikelihoods(1,i+(j-1)*n)=fread(fid,1,'double');
    HInvestorToM(1,i+(j-1)*n)=fread(fid,1,'int32');
    HInvestorGuilt(1,i+(j-1)*n)=fread(fid,1,'int32');
    HInvestorAversion(1,i+(j-1)*n)=fread(fid,1,'int32');        
    HInvestorPlan(1,i+(j-1)*n)=fread(fid,1,'int32');
    HInvestorTemp(1,i+(j-1)*n)=fread(fid,1,'double');
    HInvestorShift(1,i+(j-1)*n)=fread(fid,1,'int32');
    HInvestorIrritability(1,i+(j-1)*n)=fread(fid,1,'int32');
    %InvestorRepair(1,i+(j)*n)=fread(fid,1,'int32');
    HTrusteeLikelihoods(1,i+(j-1)*n)=fread(fid,1,'double');
    HTrusteeToM(1,i+(j-1)*n)=fread(fid,1,'int32');
    HTrusteeGuilt(1,i+(j-1)*n)=fread(fid,1,'int32');
    HTrusteeAversion(1,i+(j-1)*n)=fread(fid,1,'int32'); 
    HTrusteePlan(1,i+(j-1)*n)=fread(fid,1,'int32');
    HTrusteeTemp(1,i+(j-1)*n)=fread(fid,1,'double');
    HTrusteeShift(1,i+(j-1)*n)=fread(fid,1,'int32');
    HTrusteeIrritability(1,i+(j-1)*n)=fread(fid,1,'int32');
    %TrusteeRepair(1,i+(j)*n)=fread(fid,1,'int32');
    for t = 1:10
        for k = 1:1
            HIExp(i+(j-1)*n,t,k) =  fread(fid,1,'double');
            for g = 1:3
                HIBelief(k,g,i+(j-1)*n,t)=  fread(fid,1,'double');            
            end
            for irr = 1:2
                HIIrr(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                HIShift(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                 HIShift(k+1,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
            end
            for g = 1:3     
                 for irr = 1:2
                     for act = 1:5
                         HIAct(act,t,g,k,irr,i+(j-1)*n) = fread(fid,1,'double');
                     end
                 end
            end
        end
         %if(t < 10 & MDisapp(j,i,t)>0)
         %   MIDisapp(1,i+(j-1)*n)=1;
        %end       
    end
    for t = 1:10
        for k = 1:1        
            HTExp(i+(j-1)*n,t,k) =  fread(fid,1,'double');
            for g = 1:3
                HTBelief(k,g,i+(j-1)*n,t)=  fread(fid,1,'double');            
            end
            for irr = 1:2
                HTIrr(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                HTShift(k,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
                HTShift(k+1,irr,i+(j-1)*n,t)=  fread(fid,1,'double');
            end
            for g = 1:3     
                 for irr = 1:2
                     for act = 1:5
                         HTAct(act,t,g,k,irr,i+(j-1)*n) = fread(fid,1,'double');
                     end
                 end
            end            
        end
    end
end
    fclose(fid);
    
for i = 1:93
   [FInvestorLikelihoods(i), ipos(i)] = min([InvestorLikelihoods(i) HInvestorLikelihoods(i)]);
    if ipos(i) == 1
      % InvestorLikelihoods(i) = MInvestorLikelihoods(i);
    FInvestorToM(i)=InvestorToM(i);
    FInvestorGuilt(i)=InvestorGuilt(i);
    FInvestorIrritability(i) = InvestorIrritability(i);
    FInvestorPlan(i)=InvestorPlan(i);
    FInvestorTemp(i)=InvestorTemp(i);
    FInvestorShift(i)=InvestorShift(i);
    FInvestorIrr(i) = InvestorIrritability(i);
    FInvestorAversion(i)=InvestorAversion(i);
    FIExp(i,:,:) = MIExp(i,:,:);
    else
   % InvestorLikelihoods(i) = MInvestorLikelihoods(c+i);    
    FInvestorToM(i)= HInvestorToM(i);
    FInvestorGuilt(i)=HInvestorGuilt(i);
    FInvestorAversion(i)=HInvestorAversion(i);
    FInvestorIrritability(i) = HInvestorIrritability(i);
    FInvestorPlan(i)=HInvestorPlan(i);
    FInvestorTemp(i)=HInvestorTemp(i);
    FInvestorShift(i)=HInvestorShift(i);
    FInvestorIrr(i) = HInvestorIrritability(i); 
    FIExp(i,:,1) = HIExp(i,:,1);
    end
    %InvestorRepair(1,i+(j)*n)=fread(fid,1,'int32');
    %MTrusteeLikelihoods(1,i+(j-1)*n)=fread(fid,1,'double');
    [FTrusteeLikelihoods(i),pos(i)] = min([TrusteeLikelihoods(i) HTrusteeLikelihoods(i)]);
    if pos(i) == 1
    %TrusteeLikelihoods(i)=MTrusteeLikelihoods(i);    
    FTrusteeToM(i)=TrusteeToM(i);
    FTrusteeGuilt(i) = TrusteeGuilt(i);
    FTrusteeAversion(i)=TrusteeAversion(i); 
    FTrusteePlan(i)=TrusteePlan(i);
    FTrusteeTemp(i)=TrusteeTemp(i);
    FTrusteeShift(i) = TrusteeShift(i);
    FTrusteeIrritability(i)=TrusteeIrritability(i);
    FTExp(i,:,:) = MTExp(i,:,:);
    for t = 1:10
        FShift(i,t)=MTShift(FTrusteeToM(i)+1,FTrusteeIrritability(i)+1,i,t);
    end
    else

    %InvestorRepair(1,i+(j)*n)=fread(fid,1,'int32');
    %TrusteeLikelihoods(i)=MTrusteeLikelihoods(c+i); 
    FTrusteeToM(i)=HTrusteeToM(i);
    FTrusteeGuilt(i) = HTrusteeGuilt(i);
    FTrusteeAversion(i)=HTrusteeAversion(i); 
    FTrusteePlan(i)=HTrusteePlan(i);
    FTrusteeTemp(i)=HTrusteeTemp(i);
    FTrusteeShift(i) = HTrusteeShift(i);
    FTrusteeIrritability(i)=HTrusteeIrritability(i);
    FTExp(i,:,1) = HTExp(i,:,1); 
    for t = 1:10
        FShift(i,t)=HTShift(FTrusteeToM(i)+1,FTrusteeIrritability(i)+1,i,t);
    end    
    end
end        