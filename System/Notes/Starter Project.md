[[Work Projects]]

## Vigia Monitoring

- [ ] Gather main monitorings/alerts from Momo
	- [ ] Find which datasets it uses
	- [ ] Play with the datasets on Databricks
	- [ ] Define thresholds
	- [ ] Create monitoring job
	- [ ] What is amount converted?
* [x] Check which Vigia version we Use in Lending PJ = V2
- [ ] Study the difference between V1 and V2
	- [ ] Talk to **Bruna** or **Felipe**
	- [ ] Baseline: > 0.2%

### Alerts

1. Daily/Weekly % of Amount Lent with Fraud*
2. Fraud Losses: Per Loan and Share
3. Amount Blocked vs. Actual fraude rate*
4. Average Vigia score*
5. More? Check with **Daniela**

### Datasets

nu-br/dataset/vigia-v1-monitoring
dataset/vigia-v1-online
contract-underboss/loan-proposals
dataset/dynamic-offers-loans
dataset/lending-fraud-hardcut-control-customers-list-dataset
nu-br/dataset/ddms-monitoring-current-snapshot

### Links

[Fraud Monitoring by Product](https://prod-global-momo.nubank.com.br/?path=Lending%2FFraud+Monitoring%2FFraud+Monitoring+by+Product)
[Vigia V1 Momo Monitoring Databricks](https://nubank-e2-general.cloud.databricks.com/editor/notebooks/3010561047508046?o=2093534396923660#command/3010561047508049)
[Giovanni Fraud Monitoring](https://prod-grafana.ist.nubank.world/d/c646a1ec-3b19-408a-b2da-45f72997e25c/vigia-model?orgId=1&from=now-2d&to=now)

## Fenix Parameters Monitoring

- [ ] Decision tree vs. Actuals
	- [ ] How to create a dataset with parameters by band vs actuals
		- [ ] Never happened, but scores suffers from overrides
		- Eligible during ETL but not during acquisition
	- [ ] Check witch dataset stores the actuals
	- [ ] Join with decision tree by date, them validate?
		- [ ] How to validate the decision tree?
	- [ ] Check model monitoring with Olivia
- [x] **OFFTOPIC**: how to policies names are given? where do I group them?
- {population}-{policy}

### Alerts

## Budget Monitoring

### Alerts

- [ ] Amount lent vs Actuals (Daily)
- [ ] Roll rate budget vs Actuals
	- [ ] Alarm 
	- [ ] What is and where do I found the roll rate by date/week/month?
- [ ] Run weekly vs. budget and send report in channel (before Thursday)
- [ ] Gross profit don't need to be monitored

## Gremlins Monitoring

- [ ] On hold, Gremlins is currently deprecated
	- [ ] Validate with **George** if we still need to implement it
	- [ ] Study multi-repo, provided by **Kamienski**

## Double Entry Monitoring

- [ ] On hold as well, I think this don't need to be reimplemented
	- [ ] Validate with **Alecsander** and **George**
