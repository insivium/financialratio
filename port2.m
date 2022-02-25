 function port2
  % using the annualized rate formula : (((Final value/Present value)^1/n)-1)
  %where n is the time that the investment is held.
  % port2 will use input functions to calculate the sharpe ratio
  % Given the bigger data handle, my portfolio will only consist of 5 securites each
  % The financial ratio calculates the profit made against a security with little risk
  % such as the US government bonds,they are said to be free of risk 
  % because the US govt is held in high regards when it comes in paying its debt
  % safe_rate will store the value of a risk free security

  safe_rate=input('Please enter a risk-free rate in percentage, for example the U.S Treasury Bill ;');
  while safe_rate<0
      safe_rate=input('Invalid!Enter a positive integer')
  end
  per_rate=safe_rate/100;
  total=input('Please enter total investment amount for your first portfolio: ');
  while total<0
      total=input('Invalid!Enter a positive integer');
  end
  a=input('Please enter the duration of your first investment :');
  while a<0
      a=input('Invalid!Enter a positive integer');
  end
  initial_1=input('Please enter the initial investment amount :');
  while initial_1<0
      initial_1=input('Invalid!Enter a positive integer');
  end
  final_1=input('Please enter the final investment amount after appreciation and dividends :');
  b=input('Please enter the duration of your second investment :');
  while b<0
      b=input('Invalid!Enter a positive integer');
  end
  initial_2=input('Please enter the initial investment amount :');
  while initial_2<0
      initial_2=input('Invalid!Enter a positive integer');
  end
  final_2=input('Please enter the final investment amount after appreciation and dividends :');
  c=input('Please enter the duration of your third investment :');
  while c<0
      c=input('Invalid!Enter a positive integer');
  end
  initial_3=input('Please enter the initial investment amount :');
  while initial_3<0
      initial_3=input('Invalid!Enter a positive integer');
  end
  final_3=input('Please enter the final investment amount after appreciation and dividends :');  
  d=input('Please enter the duration of your fourth investment :');
  while d<0
      d=input('Invalid!Enter a positive integer');
  end
  initial_4=input('Please enter the initial investment amount :');
  while initial_4<0
      initial_4=input('Invalid!Enter a positive integer');
  end
  final_4=input('Please enter the final investment amount after appreciation and dividends :');
  e=input('Please enter the duration of your fifth investment :');
  while e<0
      e=input('Invalid!Enter a positive integer');
  end
  initial_5=input('Please enter the initial investment amount :'); 
  while initial_5<0
      initial_5=input('Invalid!Enter a positive integer');
  end
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

  
  % Portfolio return is the average return of all securities in the portfolio
  % Its formula is the assets returns * the weight of the assets 
  % with respect to the total invested amount
  
  portfolio=(annual_1*weight_1)+(annual_2*weight_2)+(annual_3*weight_3)+(annual_4*weight_4)+(annual_5*weight_5);
  
  
  % Calculating financial ratio : the Sharpe ratio
  % R_p-R_f/standard deviation of return
  % Calculating standard deviation for Sharpe ratio
  % The formula is: the summ of all sqrt((r-r_avg)^2/n-1)
  % where r is rate of return 
  
  avg_return=(annual_1+annual_2+annual_3+annual_4+annual_5)/5;

  % Because standard deviation is the square root of  variance..
  % Calculating variance
  % Variance is the sum of x^2-x(mean)^2/n-1
  % In this case we calculate the volatility in return expected from a portfolio
  % in this case annual_1: our return - avg_return: our average return, both squared
  
  calc_1=(annual_1)^2-(avg_return)^2;
  calc_2=(annual_2)^2-(avg_return)^2;
  calc_3=(annual_3)^2-(avg_return)^2;
  calc_4=(annual_4)^2-(avg_return)^2;
  calc_5=(annual_5)^2-(avg_return)^2;
  variance=calc_1+calc_2+calc_3+calc_4+calc_5;
  n_variance=variance/4;
  
  
  % Calculating standard deviation
  
  std=sqrt(n_variance);
  
  % For the Sharpe ratio...
  % Calculates expected return for every unit of risk taken
  % the formula follows
  % return on portfolio-return of a risk free asset/standard deviation
  
  ratio=portfolio-per_rate;
  std_ratio=ratio/std;
  fprintf('The Sharpe Ratio for the 1st portfolio is %1.3f\n',std_ratio)
  
  % Commentary on the Sharpe ratio
  % A sharpe ratio of <1,proves to be high in risk with low return proportionately
  % A sharpe ratio of <0.5,and investing in a portfolio is inefficient 
  % Better investment is to invest on an equity index
  % >1 is considered good
  % >2 considered very good
  % >3 considered excellent
  if std_ratio<=0.5
    disp('Suboptimal return for the risk took,it is recommended to invest in an index fund')
  elseif std_ratio>0.5
    disp('Good return based on risk taken')
  elseif std_ratio>2
    disp('Very good return,market beating performance')
  elseif std_ratio>3
    disp('Excelletent return ,high return for a very low investment risk')
  else
    disp('The sharpe ratio is incorrect,please re-run the program')
  end

  % 2nd portfolio calculation
  % All the calculations mentioned in portfolio 1 will be also computed here
  % Then we will compare them against each other
  % In conclusion we will observe which portfolio fares the best in terms of 
  % How much potential  return can be obtained with the least probability of 
  % making losses
  
  safe_rate_2=input('Please enter a risk-free rate in percentage, for example the U.S Treasury Bill :');
  while safe_rate_2<0
      safe_rate_2=input('Invalid!Enter a positive integer');
  end
  per_rate_2=safe_rate_2/100;
  total_2=input('Please enter total investment amount for your second portfolio :');
  while total_2<0
      total_2=input('Invalid!Enter a positive integer');
  end
  f=input('Please enter the duration of your first investment for 2nd portfolio :');
  while f<0
      f=input('Invalid!Enter a positive integer')
  end
  initial_6=input('Please enter the initial investment amount :');
  while initial_6<0
      initial_6=input('Invalid!Enter a positive integer');
  end
  final_6=input('Please enter the final investment amount after appreciation and dividends :');
  g=input('Please enter the duration of your second investment for 2nd portfolio:');
  while g<0
      g=input('Invalid!Enter a positive integer');
  end
  initial_7=input('Please enter the initial investment amount :');
  while initial_7<0
      initial_7=input('Invalid!Enter a positive integer');
  end
  final_7=input('Please enter the final investment amount after appreciation and dividends :');
  h=input('Please enter the duration of your third investment for 2nd portfolio :');
  while h<0
      h=input('Invalid!Enter a positive integer');
  end
  initial_8=input('Please enter the initial investment amount :');
  while initial_8<0
      initial_8=input('Invalid!Enter a positive integer');
  end
  final_8=input('Please enter the final investment amount after appreciation and dividends :');  
  i=input('Please enter the duration of your fourth investment for 2nd portfolio:');
  while i<0
      i=input('Invalid!Enter a positive integer');
  end
  initial_9=input('Please enter the initial investment amount :');
  while initial_9<0
      initial_9=input('Invalid!Enter a positive integer');
  end
  final_9=input('Please enter the final investment amount after appreciation and dividends :');
  j=input('Please enter the duration of your fifth investment for 2nd portfolio:');
  while j<0
      j=input('Invalid!Enter a positive integer');
  end
  initial_10=input('Please enter the initial investment amount :'); 
  while initial_10<0
      initial_10=input('Invalid!Enter a positive integer');
  end
  final_10=input('Please enter the final investment amount after appreciation and dividends :');
  
  % Calculating annualized return
  % The formula is final return/initial return ^ 1/n-1
  % where n denotes time 
  
  annual_6=((final_6/initial_6)^(1/f)-1);
  annual_7=((final_7/initial_7)^(1/g)-1);
  annual_8=((final_8/initial_8)^(1/h)-1);
  annual_9=((final_9/initial_9)^(1/i)-1);
  annual_10=((final_10/initial_10)^(1/j)-1);
  
  weight_6=(initial_6/total_2);
  weight_7=(initial_7/total_2);
  weight_8=(initial_8/total_2);
  weight_9=(initial_9/total_2);
  weight_10=(initial_10/total_2);
  
 % Portfolio return is the average return of all securities in the portfolio
  % Its formula is the assets returns * the weight of the assets 
  % with respect to the total invested amount
  
 portfolio_2=(annual_6*weight_6)+(annual_7*weight_7)+(annual_8*weight_8)+(annual_9*weight_9)+(annual_10*weight_10);
  
  % Calculating financial ratio : the Sharpe ratio
  % R_p-R_f/standard deviation of return
  % Calculating standard deviation for Sharpe ratio
  % The formula is: ?sqrt((r-r_avg)^2/n-1)
  % where r is rate of return 
  
  avg_return_2=(annual_6+annual_7+annual_8+annual_9+annual_10)/5;
 
 % Calculating variance
  
  calc_6=(annual_6)^2-(avg_return_2)^2;
  calc_7=(annual_7)^2-(avg_return_2)^2;
  calc_8=(annual_8)^2-(avg_return_2)^2;
  calc_9=(annual_9)^2-(avg_return_2)^2;
  calc_10=(annual_10)^2-(avg_return_2)^2;
  variance_2=calc_6+calc_7+calc_8+calc_9+calc_10;
  n_variance_2=variance_2/4;
  
  % Calculating std
  
  std_2=sqrt(n_variance_2);
  
  % For the Sharpe ratio...
  
  ratio_2=portfolio_2-per_rate_2;
  std_ratio_2=ratio_2/std_2;
  fprintf('The Sharpe Ratio for the 2nd portfolio is %1.3f\n',std_ratio_2)

  % 2nd portfolio sharpe Ratio commentary

  if std_ratio_2<=0.5
    disp('Suboptimal return for the risk took,it is recommended to invest in an index fund')
  elseif std_ratio_2>0.5
    disp('Good return based on risk taken')
  elseif std_ratio_2>2
    disp('Very good return,market beating performance')
  elseif std_ratio_2>3
    disp('Excelletent return ,high return for a very low investment risk')
  else
    disp('The sharpe ratio is incorrect,please re-run the program')
  end

  % Sharpe ratios comparison

  if std_ratio_2>std_ratio
      disp('2nd Portfolio Sharpe ratio is higher')
  else
      disp('1st Portfolio Sharpe ratio is higher')
  end

  % Bar chart graph 
  x=categorical({'Portfolio 1','Portfolio 2'});
  y=[std_ratio,std_ratio_2];
  bar(x,y)
  title('Sharpe Ratio');

end


