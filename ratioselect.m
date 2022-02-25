% function to be called by appselect that display what the user will see
% in this case different portfolios 
function choices=ratioselect
  printchoices
  choices=input('');
  % take user input 1 to 3
  while~any(choices==1:3)
  disp('Please enter options 1 to 3 .')
  printchoices
  choices=input('');
  end
end
% statements to be displayed on the menu
function printchoices
  fprintf('Please choose the action that needs to be performed:\n\n')
  fprintf('1) Comparing 2 portfolios Sharpe ratios \n')
  fprintf('2) Bulk processing calculation of Sharpe ratio using MAT files\n')
  fprintf('3) Exit program \n')
end
