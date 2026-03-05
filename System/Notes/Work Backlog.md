[[Lending PJ]]

1. Olivia e Eduardo: Fenix Monitorings
> - Proactive Monitorings
>     - **[Monthly Monitoring in Momo:](https://prod-global-momo.nubank.com.br/?path=Lending%2FLending+PJ)** We have AUC, Risk Band, and Delinquency by Approval rate views in several populations and targets.
>         - It is not showing yet, but will be soon appearing in `Models Monitoring` folder, inside `Lending PJ`
>     - **[Features Monitoring in Shepherd/Gladis:](https://backoffice.nubank.com.br/gladis/#/monitorings/670e6647-eb2b-453f-85bf-9536abc11130)** Categorical, Missing, T-Statistics and Percentile of features in scoring dataset
>     - Obs: We are probably bringing these views once a month in PJ’s Weekly monitoring, but open to suggestions
> 
> - Reactive Monitoring
>     - **[LeMMon](https://github.com/nubank/itaipu/blob/master/subprojects/data-domains/lending/src/main/scala/nu/data_domain/lending/br/pj_loans/datasets/models/monitoring/FenixV1ModelMonitoring.scala)**: was implemented and already included in [Unified Model Monitoring.](https://github.com/nubank/global-financing-databricks/pull/289)
>         - We currently have Scores Monitoring, Canary Monitoring, Features Daily Diff and Stale Monitoring.
>     - Though Fenix is not being used in production yet, it started appearing in [#lending-execution-monitoring](https://nubank.slack.com/archives/C02EUEWJ0T0) today.