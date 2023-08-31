function [resultado_c_s, resultado_c_d] = runge_kutta(c_s0, c_d0, v_s, v_d, f_0, t_0, t_f, N)
    delta_t = (t_f - t_0) / N; %h
    c_s = c_s0;
    c_d = c_d0;
    
    % Crear vectores para almacenar los resultados
    resultado_c_s = zeros(1, N);
    resultado_c_d = zeros(1, N);
    
    for i = 1:N
        % Guardar los valores actuales en los vectores de resultados
        resultado_c_s(i) = c_s;
        resultado_c_d(i) = c_d;
        
        k1 = delta_t * (-c_s / v_s * f_0);
        k1_prime = delta_t * f_0*(c_s / v_s - c_d / v_d);
        
        k2 = delta_t * (-(c_s + k1 / 2) / v_s * f_0);
        k2_prime = delta_t * f_0*((c_s + k1 / 2) / v_s - (c_d + k1_prime / 2) / v_d);
        
        k3 = delta_t * (-(c_s + k2 / 2) / v_s * f_0);
        k3_prime = delta_t * f_0*((c_s + k2 / 2) / v_s - (c_d + k2_prime / 2) / v_d);
        
        k4 = delta_t * (-(c_s + k3) / v_s * f_0);
        k4_prime = delta_t * f_0*((c_s + k3) / v_s - (c_d + k3_prime) / v_d);
        
        c_s = c_s + (k1 + 2*k2 + 2*k3 + k4) / 6;
        c_d = c_d + (k1_prime + 2*k2_prime + 2*k3_prime + k4_prime) / 6;
    end
end