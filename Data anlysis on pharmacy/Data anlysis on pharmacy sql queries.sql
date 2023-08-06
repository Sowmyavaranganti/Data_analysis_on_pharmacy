1. select sum(Rx_Units_Sold) as units_sold,Dispensed_State as State_in_US from adta5240sv.Pharmacy_data_pharmacy_data 
group by Dispensed_State;

2. select Rx_Name as drug_name,round(sum(Order_Gross_Profit),2) as profit from adta5240sv.Pharmacy_data_pharmacy_data 
group by drug_name;

3. select Dispensed_State as State_in_US,round(sum(Order_Gross_Profit),2) as profit from adta5240sv.Pharmacy_data_pharmacy_data 
group by Dispensed_State order by Profit desc limit 10;

4. select Rx_Distributor as Distibutor,round(sum(Order_Gross_Profit),2) as profit, extract(year from order_date) as year from adta5240sv.Pharmacy_data_pharmacy_data 
group by Rx_Distributor,year order by Profit;

5. select Market_Segment as Segment,count(Rx_Units_Sold) as no_of_orders, round(sum(Order_Gross_Profit),2) as profit from adta5240sv.Pharmacy_data_pharmacy_data 
group by Segment order by no_of_orders desc;