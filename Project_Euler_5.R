prime=function(x){
    if(x==1){
        flag=FALSE
    }
    else if(x==2||x==3){
        flag=TRUE
    }
    else{
        flag=!any(x %% 2:floor(sqrt(x)) == 0)
        # any�� � �ϳ��� TRUE�̸� TRUE��ȯ
        # !any�� ���� FALSE�̸� TRUE ��ȯ
    }
    return(flag)
}

ex005=function(x){
    vprime=NULL  #x���� ������ �Ҽ��� ã�´�
    for(i in 1:x){
        if(prime(i)){
            vprime[length(vprime)+1]=i
        }
    }
    #�Ҽ��� ������ ��� ���Ѵ�.
    plus=prod(vprime)
    
    i=plus
    v=1:x
    repeat{
        if(all(i%%v==0)){
            break;
        }
        i=i+plus #�Ҽ��� ����ŭ ������Ų��.
    }
    return(i)
}

ex005(20)