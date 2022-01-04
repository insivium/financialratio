function choices=ratioselect
  printchoices
  choices=input('');
  while~any(choices==1:4);
  disp('Please enter options 1 to 4 .')
  printchoices
  choices=input('');
end

function printchoices
  fprintf('Please choose the number of portfolios to compare at a time:\n\n')
  fprintf('1) 2 Portfolios at a time \n')
  fprintf('2) 3 Portfolios at a time \n')
  fprintf('3) 4 Portfolios at a time \n')
  fprintf('4) Exit program \n')
  
