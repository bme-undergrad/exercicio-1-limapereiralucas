function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
t = zeros(imax, 1);
    t(1) = x0;
    
    for ii = 1:length(t)-1
        if ii ~= 1
            erro(ii) = abs((t(ii)-t(ii-1))/t(ii)) * 100;  % erro relativo em percentual
            if erro(ii) < es
                break
            endif
        endif
        t(ii+1) = t(ii) - func(t(ii))/func_d(t(ii));
    endfor
    
    t = t(ii);  % retorna a última estimativa válida
%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
