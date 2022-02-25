function port3
files = dir("*.mat")
t = table()
for idx = 1:numel(files)
    data = load(fullfile(files(idx).folder,files(idx).name));
    t = [t; data.(files(idx).name(1:end-4))]
end
t.Annual = repmat(sum(((((t.FinalAmount)./(t.InitialAmount)).^(1./t.Duration)))-1),height(t),1)
t.Portfolio = repmat(sum((t.Annual).*((t.InitialAmount)./(t.TotalInvestment))),height(t),1)
t.Return = repmat(sum(t.Annual.^2)-(mean(t.Annual).^2),height(t),1)
t.Std=repmat(sqrt((sum(t.Return)./(height(t)-1))),height(t),1)
t.Sharpe=((t.Portfolio-t.SafeRate))./(t.Std)
end
