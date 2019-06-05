function[SB]= Batch_spec(kB,k,X_T,Dt,q)%%[SB]= Batch_spec(kB,k,X_T,Dt,q)%%Calculate Batchelor spectrum given kB, X_T, and q. %%INPUTS:%   k - Wavenumber vector indicating wavenumbers at which to return the%   calculated Batchelor spectrum. Usually just the wavenumbers from the%   observed data. Size Mx1 or 1xM.%%   kB - Batchelor wavenumber, a function of epsilon%%   X_T - observed Chi, obtained from integrating the temperature-gradient%   power spectrum.%%   q - Batchelor spectrum parameter, defined in micT_eps_chi%%OUTPUTS:%   SB - calculated Batchelor spectrum, evaluated at each input k%alpha=sqrt(2*q)*(k/kB);SB = sqrt(q/2) * X_T ./ (kB.*Dt) .* alpha .* ...    ( exp(-alpha.^2/2) - sqrt(pi/2) * alpha .* erfc(alpha/sqrt(2)) );%From the definition of the error function, you can show that %\int_{\alpha}^{\inf}(e^{-x^2/2})dx = sqrt(pi/2) * erfc(\alpha / 2).%Compare with Eq.4 of Ruddick et al 2000. Verified B.Scheifele 2017-05-15end