function port2
  % using the annualized rate formula : (((Final value/Present value)^1/n)-1)*100
  %where n is the time that the investment is held.
  % port2 will use input functions to calculate the sharpe ratio
  % Given the bigger data handle, my portfolio will only consist of 5 securites each
  
  safe_rate=input('Please enter a risk-free rate in percentage, for example the U.S Treasury Bill ;');
  per_rate=safe_rate/100;
  total=input('Please enter total investment amount for your first portfolio: ');
  a=input('Please enter the duration of your first investment :');
  initial_1=input('Please enter the initial investment amount :');
  final_1=input('Please enter the final investment amount after appreciation and dividends :');
  b=input('Please enter the duration of your second investment :');
  initial_2=input('Please enter the initial investment amount :');
  final_2=input('Please enter the final investment amount after appreciation and dividends :');
  c=input('Please enter the duration of your third investment :');
  initial_3=input('Please enter the initial investment amount :');
  final_3=input('Please enter the final investment amount after appreciation and dividends :');  
  d=input('Please enter the duration of your fourth investment :');
  initial_4=input('Please enter the initial investment amount :');
  final_4=input('Please enter the final investment amount after appreciation and dividends :');
  e=input('Please enter the duration of your fifth investment :');
  initial_5=input('Please enter the initial investment amount :'); 
  final_5=input('Please enter the final investment amount after appreciation and dividends :');
  
  
  % Calculating annualized return
  % The formula is final return/initial return ^ 1/n-1
  % where n denotes time 
  
  
  annual_1=((final_1/initial_1)^(1/a)-1);
  annual_2=((final_2/initial_2)^(1/b)-1);
  annual_3=((final_3/initial_3)^(1/c)-1);
  annual_4=((final_4/initial_4)^(1/d)-1);
  annual_5=((final_5/initial_5)^(1/e)-1);
  weight_1=(initial_1/total);
  weight_2=(initial_2/total);
  weight_3=(initial_3/total);
  weight_4=(initial_4/total);
  weight_5=(initial_5/total);
  disp(weight_1)
  
  % Portfolio return is the average return of all securities in the portfolio
  % Its formula is the assets returns * the weight of the assets 
  % with respect to the total invested amount
  
  portfolio=(annual_1*weight_1)+(annual_2*weight_2)+(annual_3*weight_3)+(annual_4*weight_4)+(annual_5*weight_5);
  disp(portfolio)
  
  % Calculating financial ratio : the Sharpe ratio
  % R_p-R_f/standard deviation of return
  % Calculating standard deviation for Sharpe ratio
  % The formula is: ?sqrt((r-r_avg)^2/n-1)
  % where r is rate of return 
  
  avg_return=(annual_1+annual_2+annual_3+annual_4+annual_5)/5;

  
  % Calculating variance
  
  calc_1=(annual_1)^2-(avg_return)^2
  calc_2=(annual_2)^2-(avg_return)^2
  calc_3=(annual_3)^2-(avg_return)^2
  calc_4=(annual_4)^2-(avg_return)^2
  calc_5=(annual_5)^2-(avg_return)^2
  variance=calc_1+calc_2+calc_3+calc_4+calc_5
  n_variance=variance/4;
  
  % Calculating std
  
  std=sqrt(n_variance);
  
  % For the Sharpe ratio...
  
  ratio=portfolio-per_rate
  std_ratio=ratio/std
  disp(std_ratio)
  
  % 2nd portfolio calculation
  safe_rate_2=input('Please enter a risk-free rate in percentage, for example the U.S Treasury Bill :')
  per_rate_2=safe_rate_2/100
  total_2=('Please enter total investment amount for your second portfolio :')
  f=input('Please enter the duration of your first investment for 2nd portfolio :');
  initial_6=input('Please enter the initial investment amount :');
  final_6=input('Please enter the final investment amount after appreciation and dividends :');
  g=input('Please enter the duration of your second investment for 2nd portfolio:');
  initial_7=input('Please enter the initial investment amount :');
  final_7=input('Please enter the final investment amount after appreciation and dividends :');
  h=input('Please enter the duration of your third investment for 2nd portfolio :');
  initial_8=input('Please enter the initial investment amount :');
  final_8=input('Please enter the final investment amount after appreciation and dividends :');  
  i=input('Please enter the duration of your fourth investment for 2nd portfolio:');
  initial_9=input('Please enter the initial investment amount :');
  final_9=input('Please enter the final investment amount after appreciation and dividends :');
  j=input('Please enter the duration of your fifth investment for 2nd portfolio:');
  initial_10=input('Please enter the initial investment amount :'); 
  final_10=input('Please enter the final investment amount after appreciation and dividends :');
  
  % Calculating annualized return
  % The formula is final return/initial return ^ 1/n-1
  % where n denotes time 
  
  annual_6=((final_6/initial_6)^(1/f)-1)
  annual_7=((final_7/initial_7)^(1/g)-1)
  annual_8=((final_8/initial_8)^(1/h)-1)
  annual_9=((final_9/initial_9)^(1/i)-1)
  annual_10=((final_10/initial_10)^(1/j)-1)
  
  weight_6=(initial_6/total)
  weight_7=(initial_7/total)
  weight_8=(initial_8/total)
  weight_9=(initial_9/total)
  weight_10=(initial_10/total)
  
 % Portfolio return is the average return of all securities in the portfolio
  % Its formula is the assets returns * the weight of the assets 
  % with respect to the total invested amount
  
 portfolio_2=(annual_6*weight_6)+(annual_7*weight_7)+(annual_8*weight_8)+(annual_9*weight_9)+(annual_10*weight_10)
  
  % Calculating financial ratio : the Sharpe ratio
  % R_p-R_f/standard deviation of return
  % Calculating standard deviation for Sharpe ratio
  % The formula is: ?sqrt((r-r_avg)^2/n-1)
  % where r is rate of return 
  
  avg_return_2=(annual_6+annual_7+annual_8+annual_9+annual_10)/5;
 
 % Calculating variance
  
  calc_6=(annual_6)^2-(avg_return)^2
  calc_7=(annual_7)^2-(avg_return)^2
  calc_8=(annual_8)^2-(avg_return)^2
  calc_9=(annual_9)^2-(avg_return)^2
  calc_10=(annual_10)^2-(avg_return)^2
  varianc_2=calc_6+calc_7+calc_8+calc_9+calc_10
  n_variance_2=variance_2/4;
  
  % Calculating std
  
  std_2=sqrt(n_variance_2);
  
  % For the Sharpe ratio...
  
  ratio_2=portfolio_2-per_rate_2
  std_ratio_2=ratio_2/std_2
  disp(std_ratio_2)
  
