
Tags: [[Lending PJ]]
#people

---

### Personal Updates

### Updates Since the Last Meeting

### Discussion Topics

- [x] DS-MLE weekly meetings
	- We can discuss relevant topics and challenges, present something learned, and prepare onboarding material. This can reduce Olivia's load when onboarding new hires upfront.
- [x] Ana Lima "task refinements".
- [x] Create `lending-pj-execution-monitoring_cluster`
	- [ ] Debug access to metapod (hotfix: setRule)
- [x] Setup Jiraya to create ticket in correct channel/board
- [ ] Vigia is PJ's Beholder? Not in PJ (maybe next year)
	- Vigia has another policy
	- Diabolical Dorynho coming to PJ (maybe):
		- +20 features in comparison to vanilla Dorynho.
		- More coverage with shorter target.
- [x] Should we monitor all these doryinho versions? what about br segments?
- [ ] We use the income proof flow in PJ? Not yet (Eduardo is starting)
	- Counter offer (not planned)
- [ ] ['policy/always-approve:model/dorynho-v2', 'policy/dorynho-v3-pj:model/dorynho-v3'] why dorynho-v2 for always-approve? Probably related to policies
	- [ ] Foundational -> always approve
	- [ ] Eligibility + Behavior Block
		- WCL v1 used Dorynho v2 (deprecated)
- [x] What are the DDMS datasets? what is max-out? How wrong decision approves/blocks are computed?
	- DDMS = Wiseguy
	- [ ] Source of Truth vs. Actuals
- [x] **Bruna Kunyioshi** - Serving Layers Validation
- [ ] Lusa: CC model -> first model that runs when CC is requested (via CPF)
- [x] Personal Loan Policy Monitoring: rbe | lusa | bunlock_200 | bv_scr | bunlock_90_200 | cc_financing 
- [ ] Ikki, Dorynho e Fenix (test via ad-hoc)
- [ ] One page with overall description (lending-pj-execution-monitoring)
- [ ] LeMMon Run
- [ ] All Lending PJ Frozen Suite is related to Fenix?
- [ ] Tripartite? (Tripartaite, python library that generate scala models) XGB not implemented in Tripartite


- [ ] Deliverables Lineage: 20 layers. Miro with Lineage
- [ ] Maestro: Policy -> Policy Selector -> ... -> WCLInput entries: go ahead until leave Lending PJ domain (iterate while within our domain)
- [ ] Columns used as hardcut (general) within policy (eg. ECR, Nuconta): map owner
- [ ] Commit time, Inputs, Used/not used datasets
- [ ] Study monitoring/policy datasets where state changes over time (overwriting?)

- [ ] Business Process

#### Nuclea (H1)

1. Mock dataset to test pipeline
2. CNPJ list is sent to bureau (maybe bureau orchestrator) -> (Monitoring, Cryptography) -> send channel of Bureau Orchestrator
3. No previous schema (check contract). Boavista: CNPJ + Data + 
4. Keep contact with Alan
5. Sanity Checks (Soda)?
6. Stackeholder: Lacerda (Invoice)

One-Pager + Discovery + Mocked Pipeline until working properly, them make integration (when true data is available if not).

### Ararynho

- [ ] Dyabolical Features
- [ ] Align with Olivia
- [ ] Deploy

### Serving Layer Validations

- [x] WCLPolicySelector, WCLServingLayerValidations and WCLPolicyNew match each other
- [x] Most NULL column arrays are related to `["model_scores_and_bands","fenix_v1_customer_prediction","fenix_v1_customer_band"]`. However, these columns must have a `ikki_v5_risk_band_voucher_adj` correctly associated, which is also validated. Maybe we should explicit it in the code?
- [x] We might need to remove these 3 columns related to score bands. Dani mentioned a further validation.

- [x] Amount Lent Sheet: historical reference, analytical, predictions

- [ ] Gremlins Monitoring is deprecated
	- [ ] Do we use multirepos?
	- [ ] How to monitor if needed?
- [ ] Model Monitoring
- [ ] Lending Policies Migration to Multirepo (`WCLServingLayerValidations`) [Dedepencies Docs](https://docs.google.com/document/d/140muaPswuZT6MSmRZlinI3xQz0eHjYREFaryl5qxmEc/edit?tab=t.0)
	- [ ] How to we use it? What is the planning for migration?
- [ ] Sheperd
- [ ] Hyoga (risk model, main feature from Beholder) is owned by PF's CC

### Feedback

- [x] Execution Plan (mainly planning estimation)
	- Estimates are only warmful when blocking other teams
	- Better to miss the shot estimating more time than less
- [ ] George's presentation and Steve presentation

### Roadblocks / Challenges

### Goals / Action Items

* Lemmon only supports one primary key: Nice to have in the future
- [x] Create Lemmon's for Articuno v2 (scores), Articuno not in Frozen Suite 
	- owned by PJ's CC, talk with them (Articuno + PJ entity?)
- [ ] Add policies monitoring notebook to PJ Exec. Monitoring
- [ ] Create decision tree visualisations for policies: interpretability
- [x] Add Lemmon (Fenix) before going to another project: scores not working because Fenix uses two primary keys. Nulls diff, Scores diff
	- Edmar & Olivia
- [x] Ignore current date in Behavior Block Monitoring
- [ ] Data reliability: check dataset as health (healthscores)
- [ ] Add Momo to Lineage Architecture
- [ ] When Fenix breaks we don't propagate policies
	- [ ] PF stores model summary on delta table, propagates last health run (Felippe Caso)
- [x] Onboarding de Eng. (Clojure)
- [ ] Fenix: reduce costs (scoring last dates down to 2021)
- [x] Amount Lent Incident hypotheses
- [x] Create Delta Table how-to document guide
- [ ] Momonitoring in Lemmon
- [ ] What is SPC? Provider for PF?
- [ ] What is block bellow?
- [ ] What is Prius? Pipeline: Eligibility model (H2)
	- [ ] Edmar: Understand serving layer of Dorynho (because of Ararynho)
	- [ ] Felipe Almeida: understand Diabolycal Deploy (all in Clojure, decisions, wiseguy) and **Feature Store**
	- [ ] Juliana Venteu
	- [ ] 2x agendas/week (Ana and Jovem)
	- [ ] Send in lending-pj-prs (@lending-pj-gov)
- [ ] Next steps: Ararynho deployment
	- [ ] Create epic 
	- [ ] Engineering Onboarding
	- [ ] Giovanni no changes
	- [ ] Mock Ararynho with Dorynho artifact
	- [ ] Force Gabe at Ararynho, simulating of its working properly (before deployment)
	- [ ] Shadowscoring (under the hood)
- [ ] Performance checkpoint
- [ ] Nathali guidance
- [ ] Data backlog
- [ ] Playbook Firefighting: investigate if there are anything centralized for investigation. Improve PJ's overview document with screenshots
- [ ] See PJ analytical dataset is used by other datasets()

**Nataly** 06/05
- [ ] Buddy
- [ ] No Togepi Onboarding (DS)
- [ ] Starting (2-3 months): backlog: sanity check Nuclea, exec. monitoring, last health score dates, lending time, dependencies (Data Quality). Risk scores, lending time and cost.

### Next Steps / Follow-ups

- [ ] Conversar com o Alan
	- [ ] Review Boavista Infra
- [x] Next Task: Problem at Loans Performance Dataset
	- [ ] Problem: Underreporting credit losses (wrong NPV)
	- [ ] Kamienski is Owner, uses photon, heavly in computation
	- [ ] Finish by end of April
	- [ ] Talk Alecsander (Step 0)
- [x] Buddy of new AE (and Jonas)
- [x] Ararynho Deploy :LiStar:
- [ ] Productivity: Experiments tracking: MiB, Auto-ML, tunning, learning curve (https://mlflow.org/docs/latest/tracking/) (AI core also have a lib similar to this)
- [ ] Migrate MiB (use Dagster and CPW to evaluate models) from Lending (owned by Cora and Ana Flavia) - hardcoded to Ikki and Dorynho - and generalize to other models

---

### Notes

**What?**
- PJ Exec. Monitoring;
- Integrate Nuclea bureau pipeline to Nubank's Batch Infra end-to-end;
- Creation of mapping document of Lending PJ data infra improvements (data quality);
- Firefighting: grant the correct functioning of current Infra;
- Ararynho and Fenix deployment (batch and online);
- Prioritize and solve problems mapped by 3rd deliverable.

**How?**
* Understand Databricks and Scala Spark domain.
* Knowledge about PJ's data infra and required tools within it.
* Owner of E2E projects, defining processes and tasks.
* Become a reference regarding lending PJ's data infra.

How's are directly related to the expected Ladder
1. Organize and upload What/How's to **QultureRocks**
2. 

How? By developing the required components necessary to assert the expected behavior: Data ingestion/comsuption, ETL, serving layer and SODA validations with fault tolerance and validations

How? By leveraging main detractors of our infra, addressing them with support of Stackeholders and understand the pros and cons of possible solutions. Such detractors may include PF dependencies, unused columns and slow/unused transformations

How? By following daily monitorings, implementing new alerts and validating existing ones in a daily basis. This work is inherited into the function and should be conducted seemingly.

---

### Action Items

| Action Item               | Due Date     | Status   |
| ------------------------- | ------------ | -------- |
| Action item 1 description | [YYYY-MM-DD] | [Status] |
| Action item 2 description | [YYYY-MM-DD] | [Status] |
