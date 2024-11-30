
.import.require`pykx;

d)lib futubull.ftnn 
 Library for working with the lib ftnn
 q).import.module`ftnn 
 q).import.module`futubull.ftnn
 q).import.module"%futubull%/qlib/ftnn/ftnn.q"

.ftnn.summary:{ .ftnn.config}

d) function futubull.ftnn.summary
 Function to show summary
 q).ftnn.summary[]

.ftnn.helper.getProperties:{ (key [a] except `$("__module__";"load_dic";"__doc__"))#a:.pykx.qeval .bt.print["dict(vars(%0))"] enlist x}

.ftnn.init:{[]
 .ftnn.config: .json.k .import.config`ftnn;
 system"l pykx.q";
 / .pykx.set[`ftnnRsa;]`$ .bt.print["%futubull%\\qlib\\ftnn\\rsa\\rsa.key"] .import.repository[]`con;
 "p" "from futu import *";
 / "p" "SysConfig.enable_proto_encrypt(True)";
 / "p" "SysConfig.set_init_rsa_file(ftnnRsa)";
 .ftnn.openQuoteContext.class:.pykx.get`OpenQuoteContext;
 .ftnn.openQuoteContext.ctx:.ftnn.openQuoteContext.class[.ftnn.config[`OpenQuoteContext]`host;.ftnn.config[`OpenQuoteContext]`port;.q.pykw[`is_encrypt]0b];
 .ftnn.openQuoteContext:.ftnn.openQuoteContext,(`$string[ lst],\:"0")!{.ftnn.openQuoteContext.ctx[hsym x;<] }@'lst:`get_market_snapshot`get_stock_quote`get_order_book`get_cur_kline`get_rt_data`get_rt_ticker`get_broker_queue`get_market_state`get_capital_flow`get_capital_distribution`get_owner_plate`request_history_kline`get_rehab`get_option_expiration_date`get_option_chain`get_warrant`get_referencestock_list`get_future_info`get_stock_filter`get_plate_stock`get_plate_list`get_stock_basicinfo`get_ipo_list`get_global_state`request_trading_days`get_history_kl_quota`set_price_reminder`get_price_reminder`get_user_security_group`get_user_security`modify_user_security`query_subscription;

 .ftnn.openSecTradeContext.class:.pykx.get`OpenSecTradeContext;
 .ftnn.openSecTradeContext.ctx:.ftnn.openSecTradeContext.class[ .q.pykw[`host] .ftnn.config[`OpenSecTradeContext]`host;.q.pykw[`port]  .ftnn.config[`OpenSecTradeContext]`port;.q.pykw[`is_encrypt]0b ];
 .ftnn.openSecTradeContext:.ftnn.openSecTradeContext,(`$string[ lst],\:"0")!{.ftnn.openSecTradeContext.ctx[hsym x;<] }@'lst:`get_acc_list`unlock_trade`accinfo_query`acctradinginfo_query`position_list_query`place_order`modify_order`order_list_query`history_order_list_query`deal_list_query`history_deal_list_query;


 .ftnn.openFutureTradeContext.class:.pykx.get`OpenFutureTradeContext;
 .ftnn.openFutureTradeContext.ctx:.ftnn.openFutureTradeContext.class[.q.pykw[`host] .ftnn.config[`OpenFutureTradeContext]`host;.q.pykw[`port]  .ftnn.config[`OpenFutureTradeContext]`port;.q.pykw[`is_encrypt]0b ]; 
 .ftnn.openFutureTradeContext:.ftnn.openFutureTradeContext,(`$string[ lst],\:"0")!{.ftnn.openFutureTradeContext.ctx[hsym x;<] }@'lst; 
 .ftnn:.ftnn,{lst!.ftnn.helper.getProperties@'lst:`AssetClass`AuType`DarkStatus`ExchType`ExpirationCycle`FinancialQuarter`IndexOptionType`IpoPeriod`Issuer`KLType`KL_FIELD`Market`MarketState`ModifyUserSecurityOp`OptionAreaType`OptionCondType`OptionType`PeriodType`Plate`PriceReminderFreq`PriceReminderMarketStatus`PriceReminderType`PriceType`PushDataType`QotRight`RelativePosition`SecurityReferenceType`SecurityStatus`SecurityType`SetPriceReminderOp`SortDir`SortField`StockField`StockHolder`SubType`TickerDirect`TickerType`TradeDateMarket`TradeDateType`UserSecurityGroupType`WarrantStatus`WrtType}[];

 .ftnn.Market:.pykx.qeval ["Market.get_all_key_list()"] except `$"N/A";
 .ftnn.Plate:.pykx.qeval "Plate.get_all_key_list()" ;
 }


.ftnn.openQuoteContext.get_plate_list1:{[market;plate]
 r:.ftnn.openQuoteContext.get_plate_list0[market;plate]; 
 if["b"$ r 0;r:.ftnn.openQuoteContext.get_plate_list0[market;plate]];
 if["b"$ r 0;'`.ftnn.openQuoteContext.get_plate_list1.no_con];
 update market,plate from r 1
 }

.ftnn.openQuoteContext.get_plate_list:{[market;plate]
 market:(),market;plate:(),plate;
 l:raze raze market{enlist x,y}\:/:plate;
 r:raze .ftnn.openQuoteContext.get_plate_list1 .'l;
 r 
 }



.bt.add[`.import.init;`.ftnn.init]{.ftnn.init[]}

