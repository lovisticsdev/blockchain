# Blockchain Security from First Principles

## Pedagogical Structure

Each chapter contains review questions and applied exercises. Applied exercises may produce concrete artifacts such as diagrams, traces, calculations, tables, test notes, or short memos.

Each part ends with one Integrated Lab. The Integrated Lab replaces separate chapter labs and asks the reader to produce a serious review artifact that combines the part's methods.

## PART I - SECURITY MODEL

Part I establishes the reusable method for the rest of the book: model the state machine, map assets and authority, inspect transitions and cryptographic assumptions, write threat models, and turn invariants into exploitability analysis.

### 1. Blockchains as Adversarial State Machines

* 1.1 Purpose
* 1.2 The State-Machine Core
* 1.3 State, Inputs, and Transitions
  * 1.3.1 State Is What Future Rules Need to Remember
  * 1.3.2 Inputs Are Attempts to Change State
  * 1.3.3 The Rules Can Also Change the Rules
* 1.4 Validity, Safety, Reachability, and Invariants
  * 1.4.1 Validity Is Layered
  * 1.4.2 Reachable States Are the Review Target
  * 1.4.3 Invariants State What Must Survive
* 1.5 Replication and Canonical History
  * 1.5.1 Replication Requires Determinism
  * 1.5.2 Consensus Selects History; Execution Applies It
  * 1.5.3 Blocks Commit to Ordered History
* 1.6 Adversarial Inputs and Failure Types
  * 1.6.1 The Environment Chooses Unfriendly Inputs
  * 1.6.2 Safety and Liveness Are Different Claims
  * 1.6.3 Ordering and Reorgs Are Transition Problems
* 1.7 Worked Example: Minimal Escrow

### 2. Assets, Authority, and Trust Boundaries

* 2.1 Purpose
* 2.2 Assets Are Claims Over State
  * 2.2.1 The Claim Is What Future Transitions Recognize
  * 2.2.2 Control Surfaces Are Assets
* 2.3 Authority Is Power Over Transitions
  * 2.3.1 Authority Is a Verb
  * 2.3.2 Explicit, Delegated, and Hidden Authority
* 2.4 Ownership, Custody, Control, and Exposure
  * 2.4.1 Do Not Flatten Control Layers
  * 2.4.2 Execution Models Use Ownership Differently
* 2.5 Trust Boundaries
  * 2.5.1 A Boundary Begins Where Local Verification Ends
  * 2.5.2 Write Assumptions, Not Slogans
* 2.6 Mapping Assets and Authority
  * 2.6.1 The Authority Map Is the Practical Output
* 2.7 Worked Example: Tokenized Vault

### 3. Transactions and State Transitions

* 3.1 Purpose
* 3.2 Transactions Are Inputs, Not Outcomes
  * 3.2.1 Transaction Object, Attempted Transition, Committed Effect
  * 3.2.2 Transaction Success Is Layered
* 3.3 Transaction Anatomy Across Models
  * 3.3.1 The Same Review Questions Reappear
* 3.4 Lifecycle: From Construction to Settlement
  * 3.4.1 A Transaction Changes Meaning Over Time
* 3.5 Authorization, Replay, and Domain Scope
  * 3.5.1 A Signature Is Not Intent
  * 3.5.2 Replay Is Reuse of Authority
* 3.6 Fees, Ordering, and Failure Semantics
  * 3.6.1 Resource Limits Are Security Boundaries
  * 3.6.2 Ordering Is Part of the Transaction's Meaning
  * 3.6.3 Failure Is an Outcome
* 3.7 Evidence: State, Receipts, Logs, Events, and Simulation
  * 3.7.1 Evidence Is Not Authority
* 3.8 Worked Example: Swap Transaction Review

### 4. Keys, Signatures, and Authorization

* 4.1 Purpose
* 4.2 Keys, Addresses, Accounts, and Wallets
  * 4.2.1 Private Keys Are Authority Material
  * 4.2.2 Public Keys Verify; Addresses Identify
  * 4.2.3 Wallets Are Interfaces, Not Authority
* 4.3 Signature Verification Is Not Authorization
  * 4.3.1 The Minimal Signature Model
  * 4.3.2 Complete Authorization Checks
* 4.4 Signed Payload Anatomy and Domain Separation
  * 4.4.1 Transaction Signing and Message Signing
  * 4.4.2 Typed Data Helps, But Does Not Finish the Job
* 4.5 Signature Schemes and Review Assumptions
* 4.6 Delegated and Contract-Interpreted Authority
  * 4.6.1 Permits and Signed Approvals
  * 4.6.2 Contract Signatures and Smart Accounts
* 4.7 Distributed Signing Policies
* 4.8 Authorization Failure Modes
  * 4.8.1 Replay
  * 4.8.2 Malleability and Ambiguous Identity
  * 4.8.3 Confused Signing
  * 4.8.4 Wrong Signer, Stale Authority, and Key Compromise
* 4.9 Worked Example: Permit as Delegated Authority

### 5. Cryptographic Commitments and Proofs

* 5.1 Purpose
* 5.2 Commitments as Claims About Data
  * 5.2.1 The Basic Model
  * 5.2.2 Commitments Are Not Authority
* 5.3 Hashes and Encoded Meaning
  * 5.3.1 Hash Properties in Review Terms
  * 5.3.2 Canonical Encoding and Domain Separation
* 5.4 Merkle Commitments and Inclusion Proofs
  * 5.4.1 One Root, Many Leaves
  * 5.4.2 Verification Requires Shape and Position
* 5.5 Blockchain Roots and Proof Types
* 5.6 Verifying Proofs Safely
  * 5.6.1 Root, Proof, Claim, Action
  * 5.6.2 Trust-Minimized Does Not Mean Trust-Free
* 5.7 Failure Modes
* 5.8 Worked Example: Cross-Chain Deposit Claim

### 6. Threat Modeling Blockchain Systems

* 6.1 Purpose
* 6.2 The Threat-Modeling Workflow
  * 6.2.1 Scope Before Severity
  * 6.2.2 Collect the Actual System
  * 6.2.3 Translate Claims Into Reviewable Form
* 6.3 Context, Boundaries, and Flows
  * 6.3.1 System Context
  * 6.3.2 Data Flow and Control Flow
* 6.4 Actors, Capabilities, and Fault Models
  * 6.4.1 Do Not Model One Generic Attacker
  * 6.4.2 Different Fault Models Need Different Controls
* 6.5 Assumptions and Dependencies
  * 6.5.1 Assumptions Are Security Debt
  * 6.5.2 Dependency Register
* 6.6 Threat Scenarios and Attack Paths
  * 6.6.1 From Surface to Scenario
  * 6.6.2 Attack Paths Cross Layers
* 6.7 From Threat Model to Review Work
  * 6.7.1 Priorities
  * 6.7.2 Threats Generate Tests, Invariants, and Decisions
* 6.8 Worked Example: Lending Market Threat Model
  * 6.8.1 Scope and Context
  * 6.8.2 Assumptions
  * 6.8.3 Threat Scenarios
  * 6.8.4 Review Plan

### 7. Invariants and Exploitability

* 7.1 Purpose
* 7.2 The Invariant Model
  * 7.2.1 Reachable Properties
  * 7.2.2 State, Transition, and History Properties
  * 7.2.3 Intended Invariants and Implementation Facts
* 7.3 Writing Useful Invariants
  * 7.3.1 From Wish to Property
  * 7.3.2 Quality Test
* 7.4 Invariant Families in Blockchain Systems
  * 7.4.1 Conservation and Backing
  * 7.4.2 Authorization and Capability
  * 7.4.3 Solvency, Prices, and Shares
  * 7.4.4 Time, Exits, and Recovery
* 7.5 Counterexamples and Attack Hypotheses
* 7.6 Exploitability
  * 7.6.1 From Weakness to Attack
  * 7.6.2 Narrow Claims About Non-Exploitability
* 7.7 Worked Example: Vault Donation and Share Inflation
  * 7.7.1 Protocol Intent
  * 7.7.2 Invariant
  * 7.7.3 Counterexample Trace
  * 7.7.4 Exploitability
  * 7.7.5 Mitigation Invariants
* 7.8 Invariant Catalogue

### Part I Integrated Lab: Security Model Review

* Analyze a toy vault protocol with deposits, shares, admin pause, oracle valuation, withdrawal queue, and upgrade path
* Inspect practical evidence: accounting trace, signed oracle report, commitment proof metadata, and governance payload
* Produce a security-model review package with state-machine diagram, transition table, asset inventory, authority map, trust-boundary map, transaction analysis, authorization-flow map, threat model, invariant catalogue, exploitability memo, and evidence worksheet

---

## PART II - CHAIN-LAYER SECURITY

Part II applies the Part I method below the application layer: how histories become canonical, how participants see or fail to see data, who controls ordering and inclusion, which incentives defend or weaken the system, and how clients, forks, upgrades, and incidents change inherited application assumptions.

### 8. Consensus, Fork Choice, and Finality

* 8.1 Purpose
* 8.2 History Selection
  * 8.2.1 Five Different Questions
  * 8.2.2 Validity Does Not Select History
  * 8.2.3 Settlement Is an Application Rule
* 8.3 Nakamoto-Style Settlement
  * 8.3.1 Accumulated Work and Probabilistic Reversion
  * 8.3.2 Confirmation Counts Are Not Portable
  * 8.3.3 Reorg Risk Becomes Application Risk
* 8.4 BFT and Checkpoint Finality
  * 8.4.1 Quorum Finality
  * 8.4.2 Finality Does Not Guarantee Liveness
  * 8.4.3 Deterministic and Accountable Finality
* 8.5 Proof-of-Stake Assumptions
  * 8.5.1 Validator Sets and Slashing
  * 8.5.2 Weak Subjectivity
  * 8.5.3 Validator-Set Changes Are State Transitions
* 8.6 Reorgs, Halts, and Finality Failure
  * 8.6.1 Different Incident Classes
  * 8.6.2 Application Blast Radius
* 8.7 Application Settlement Policy
  * 8.7.1 A Settlement Timeline
  * 8.7.2 Policy by Action
  * 8.7.3 Settlement Assumption Register
* 8.8 Worked Example: Deposit Crediting Across Finality Models

### 9. P2P Networks, Propagation, and Censorship

* 9.1 Purpose
* 9.2 Local Views, Not Global Truth
  * 9.2.1 Messages Before Truth
  * 9.2.2 Observation Is a Trust Boundary
* 9.3 Node Roles and Verification Boundaries
  * 9.3.1 Node Is Not a Precise Security Role
  * 9.3.2 Full Nodes Verify, But They Do Not See Everything
  * 9.3.3 Indexers and Gateways Are Derived-View Systems
* 9.4 Propagation and Relay
  * 9.4.1 Peer Discovery Shapes the First View
  * 9.4.2 Gossip Is Not Guaranteed Delivery
  * 9.4.3 Mempools Are Local Views
  * 9.4.4 Relay Policy Is Not Consensus Validity
* 9.5 Eclipse, Delay, Partition, and Selective Propagation
  * 9.5.1 Eclipse Attacks Control a Victim's View
  * 9.5.2 Delay Can Be Enough
  * 9.5.3 Routing and Partition Risk
  * 9.5.4 Selective Propagation and Censorship
* 9.6 RPC, Indexer, and Gateway Trust
  * 9.6.1 RPC Trust Has Read, Write, and Privacy Dimensions
  * 9.6.2 Failover Can Create New Bugs
* 9.7 Censorship Detection and Failover Policy
  * 9.7.1 Absence Is Weak Evidence
  * 9.7.2 A Network Assumption Register
* 9.8 Worked Example: Bridge Watcher With a Narrow View
  * 9.8.1 Observation Path
  * 9.8.2 Failure Analysis
  * 9.8.3 Corrected Security Rule

### 10. Block Production, Mempools, and MEV

* 10.1 Purpose
* 10.2 The Transaction Supply Chain
  * 10.2.1 From Intent to Settled State
  * 10.2.2 Validity Is Not Intent Satisfaction
* 10.3 Public Mempools and Private Order Flow
  * 10.3.1 Public Mempools Are Observable Waiting Rooms
  * 10.3.2 Private Submission Changes Who Must Be Trusted
  * 10.3.3 Routing Forms Have Different Trust Shapes
  * 10.3.4 Bundles and Auctions Express Ordering Intent
  * 10.3.5 Replacement Is Policy, Not Erasure
* 10.4 Ordering Authorities
  * 10.4.1 The Actors Are Not Interchangeable
  * 10.4.2 Sequencers Are Ordering Authorities
* 10.5 Inclusion, Exclusion, and Ordering Power
  * 10.5.1 Ordering Is a State-Transition Input
  * 10.5.2 Inclusion Power Can Be Enough
  * 10.5.3 Ordering Assumptions Should Become Invariants
* 10.6 MEV Patterns That Matter for Security
  * 10.6.1 Front-Running, Back-Running, and Sandwiching
  * 10.6.2 Arbitrage and Liquidations Are Ambiguous
  * 10.6.3 Time-Bandit Pressure Crosses Layers
* 10.7 Mitigations and Their Failure Modes
  * 10.7.1 Controls Must Match the Failure
  * 10.7.2 The Strongest Fix Is Often Less Extractable Design
* 10.8 Worked Example: Large AMM Swap Through the Supply Chain
  * 10.8.1 Exposure and Intended Invariant
  * 10.8.2 Attack and Review
* 10.9 Transaction Supply-Chain Risk Register

### 11. Economic Security and Incentive Failure

* 11.1 Purpose
* 11.2 Security Budget Is Not Value at Risk
  * 11.2.1 What the Budget Pays For
  * 11.2.2 TVL, Market Cap, and Total Stake Are Not Enough
  * 11.2.3 Budgets Decay and Spike
* 11.3 A Payoff Model for Review
  * 11.3.1 Expected Attack Payoff
  * 11.3.2 Attackers Do Not Need the Whole System
  * 11.3.3 Adversaries Have Different Payoff Functions
* 11.4 Cost and Profit of Corruption
  * 11.4.1 Cost Is Attack-Specific
  * 11.4.2 Profit Is Also Attack-Specific
* 11.5 Windows, Bribes, and Punishment
  * 11.5.1 Time Decides Feasibility
  * 11.5.2 Bribery Changes the Capital Model
  * 11.5.3 Slashing Is Not Restitution
* 11.6 Centralization and Correlated Failure
  * 11.6.1 Control, Not Count
  * 11.6.2 Delegation, Liquid Staking, and Restaking
* 11.7 Liveness, Griefing, and Censorship Markets
  * 11.7.1 No Theft Required
  * 11.7.2 Griefing and Censorship Can Be Rational
* 11.8 Worked Example: Bridge Committee Economics
  * 11.8.1 Protected Promise and Threshold Cost
  * 11.8.2 Profit, Cost, and Response
* 11.9 Economic Security Worksheet

### 12. Clients, Forks, Upgrades, and Chain Incidents

* 12.1 Purpose
* 12.2 Clients Are Consensus Machinery
  * 12.2.1 Client Diversity and Compatibility
* 12.3 How Chains Disagree
  * 12.3.1 Proof Verifiers and Light Clients
* 12.4 Implementation Attack Surfaces
* 12.5 Forks, Upgrades, and Release Coordination
* 12.6 Chain Incidents and Social Recovery
* 12.7 Application Behavior During Incidents
* 12.8 Worked Example: Exchange Deposits During a Client Split
* 12.9 Chain Incident and Upgrade Register

### Part II Integrated Lab: Chain-Layer Risk Review

* Analyze a protocol that depends on chain settlement, RPC/indexer observations, ordering assumptions, bridge messages, signer controls, and incident behavior
* Reconcile conflicting node, RPC, indexer, and explorer observations across a fork/client-split scenario
* Calculate signer collateral, minted exposure, realized sale proceeds, remaining exposure, and nominal value at risk
* Produce a chain-layer risk review with finality assumptions, settlement policy, reorg handling, dependency map, censorship and ordering-risk map, MEV/order-flow exposure, economic attack feasibility, client/fork/upgrade incident assumptions, controls, and residual risk

---

## PART III - EXECUTION MODELS

### 13. UTXO Systems and Bitcoin Security

* 13.1 Purpose
* 13.2 UTXOs as State
  * 13.2.1 The State Is the Unspent Output Set
  * 13.2.2 No Account Balance Exists at Consensus Level
  * 13.2.3 Fees Are Implied by Missing Value
* 13.3 Transaction Anatomy and Review Evidence
  * 13.3.1 Inputs Name Previous Outputs
  * 13.3.2 Outputs Encode Future Authority
  * 13.3.3 Change Is a Security Surface
* 13.4 Spending Conditions: Script, Witnesses, and Taproot
  * 13.4.1 Script Is Predicate Logic for Spending
  * 13.4.2 Signature Scope and Sighash Modes
  * 13.4.3 Witness Separation Changes Evidence
  * 13.4.4 Taproot Has Key Paths and Script Paths
* 13.5 Timelocks, Presigned Transactions, and Off-Chain Contracts
  * 13.5.1 Timelocks Turn Time Into a Spending Condition
  * 13.5.2 Presigned Transactions Move Risk Earlier
  * 13.5.3 Off-Chain Contracts Depend on On-Chain Escape
* 13.6 Fee Policy, RBF, CPFP, Package Relay, and Pinning
  * 13.6.1 Consensus Validity Is Not Relay Policy
  * 13.6.2 RBF Is Policy, Not Guaranteed Cancellation
  * 13.6.3 CPFP and Package Relay
  * 13.6.4 Transaction Pinning
* 13.7 Worked Example: Timelocked Escrow

### 14. Ethereum's Account Model

* 14.1 Purpose
* 14.2 World State and Account Identity
  * 14.2.1 World State as an Account Map
  * 14.2.2 EOAs, Contract Accounts, and Delegated Code
* 14.3 Transactions, Execution, and Receipts
  * 14.3.1 Transactions as Ordered Account Inputs
  * 14.3.2 Validity, Execution, and Receipts
* 14.4 Account Authority, Storage, and Evidence
  * 14.4.1 Calls, Senders, and Account Authority
  * 14.4.2 Storage, Native Balances, and Token Balances
  * 14.4.3 Calldata, Return Data, Logs, and Reverts
* 14.5 Gas as a Security Boundary
* 14.6 Worked Example: Approval and Revert Evidence
* 14.7 Account-Model Failure Modes

### 15. EVM Internals for Security

* 15.1 Purpose
* 15.2 Execution Frames and Data Areas
  * 15.2.1 The EVM Execution Frame
  * 15.2.2 Stack, Memory, Calldata, and Returndata
  * 15.2.3 Persistent Storage and Transient Storage
* 15.3 Opcodes by Security Meaning
* 15.4 Gas and Resource Semantics
* 15.5 Calls, Context, and Code Lifecycle
  * 15.5.1 Call Frames and Context
  * 15.5.2 Creation, Initcode, Runtime Code, and SELFDESTRUCT
* 15.6 Storage Layout and Collision Risk
* 15.7 Trace Reconstruction
* 15.8 Worked Example: Delegatecall Storage Failure

### 16. Solana's Program and Account Model

* 16.1 Purpose
* 16.2 Storage, Accounts, and Program Code
  * 16.2.1 Solana's Inverted Storage Model
  * 16.2.2 Accounts and Modification Rules
  * 16.2.3 Program Code and Upgrade Authority
* 16.3 Transactions, Instructions, and Validation
  * 16.3.1 Transactions, Instructions, and Account Lists
  * 16.3.2 Signer, Writable, Owner, and Type
* 16.4 Program-Derived Authority and CPI
  * 16.4.1 Program Derived Addresses
  * 16.4.2 Cross-Program Invocation
* 16.5 Token Accounts and Owner Confusion
* 16.6 Lifecycle, Reuse, and Resource Limits
  * 16.6.1 Initialization, Reallocation, Closing, and Reuse
  * 16.6.2 Resources and Liveness
* 16.7 Worked Example: PDA Vault Authority

### 17. Move's Resource and Object Model

* 17.1 Purpose
* 17.2 Resources, Abilities, and Linear Assets
  * 17.2.1 Move Is a Resource Language
  * 17.2.2 Abilities Are Security Decisions
* 17.3 Modules as Authority Boundaries
* 17.4 Capabilities and Witnesses
* 17.5 Storage Models: Core Move, Aptos, and Sui
  * 17.5.1 Global Storage in Core Move and Aptos
  * 17.5.2 Aptos Objects
  * 17.5.3 Sui Objects
* 17.6 Transaction Construction and Object Access
* 17.7 What Move Prevents, and What It Does Not
* 17.8 Worked Example: Vault Share Resource and Admin Capability

### 18. Appchains, CosmWasm, and IBC

* 18.1 Purpose
* 18.2 Appchains and the Consensus/Application Boundary
  * 18.2.1 Appchains as Sovereign State Machines
  * 18.2.2 CometBFT, ABCI, and the Application Boundary
* 18.3 Cosmos SDK State and Authority
  * 18.3.1 Modules, Keepers, and Stores
  * 18.3.2 Parameters, Governance, and Upgrade Authority
* 18.4 CosmWasm Contract Execution
  * 18.4.1 CosmWasm as a Contract Layer Inside an Appchain
  * 18.4.2 Storage, Messages, and Submessages
* 18.5 IBC Security Model
  * 18.5.1 Clients, Connections, Channels, Packets, and Relayers
  * 18.5.2 IBC Applications and Token Semantics
* 18.6 Appchain Failure Modes
* 18.7 Worked Example: Cross-Chain Vault on a CosmWasm Appchain

### 19. Comparing Execution Models Without Flattening Them

* 19.1 Purpose
* 19.2 Comparison Method
  * 19.2.1 The Portable Questions
* 19.3 Non-Portable Security Surfaces
  * 19.3.1 State, Ownership, and Storage Are Not Portable
  * 19.3.2 Authority and Control Flow Are Runtime-Specific
  * 19.3.3 Asset Semantics Are Runtime-Specific
  * 19.3.4 External Control Flow Is Not One Bug Class
* 19.4 Evidence and Review Method
  * 19.4.1 Claim-Specific Evidence
  * 19.4.2 Evaluating an Unfamiliar Execution Model
* 19.5 Worked Example: Porting a Vault Across Models

### Part III Integrated Lab: Execution-Model Security Review

* Analyze a cross-runtime vault product with Bitcoin escrow, Ethereum proxy vault, Solana token vault, Move/Sui object vault, and CosmWasm/IBC appchain vault
* Inspect practical evidence: UTXO funding/refund data, Ethereum receipt and trace data, Solana account list and upgrade authority, Move abilities and shared-object access, and CosmWasm/IBC denom and reply-flow records
* Produce an execution-model review package with model-specific invariants, state representation map, authority map, evidence worksheets, flow reconstruction, runtime-specific findings, cross-model comparison, and test/monitoring targets

---

## PART IV - CONTRACT AND PROGRAM VULNERABILITIES

### 20. Contracts and Programs as Public Financial Backends

* 20.1 Purpose
* 20.2 The Public Backend Threat Model
  * 20.2.1 The Public Financial Backend Model
  * 20.2.2 Public Entry Points and Adversarial Callers
  * 20.2.3 State, Evidence, and Observable Intent
* 20.3 Execution Boundaries
  * 20.3.1 Atomicity and Failure Semantics
  * 20.3.2 Composability as a Dependency Boundary
* 20.4 From Defect to Finding
  * 20.4.1 From Code Mistake to Exploit Path
  * 20.4.2 Review Method: Entry Point to Invariant
* 20.5 Worked Example: Public Function Review

### 21. Authorization and Privilege Boundaries

* 21.1 Purpose
* 21.2 The Authorization Predicate
  * 21.2.1 Actor, Action, Target, and State
  * 21.2.2 Explicit, Scoped, and Testable Checks
* 21.3 Authority Primitives Across Execution Models
  * 21.3.1 Ethereum and EVM-Like Authority
  * 21.3.2 Solana Account and Program Authority
  * 21.3.3 Move and CosmWasm Authority
* 21.4 Authority Failure Modes
  * 21.4.1 Missing and Wrong Authority
  * 21.4.2 Confused and Stale Authority
* 21.5 Privilege Crossing Boundaries
  * 21.5.1 Executors, Proxies, CPI, and Capabilities
  * 21.5.2 Admin Surfaces Are Transition Powers
* 21.6 Designing Testable Privilege Boundaries
  * 21.6.1 Privilege Matrices
  * 21.6.2 Negative Tests and Scope Reduction
* 21.7 Worked Example: Vault Privilege Review

### 22. Asset and Token Semantics

* 22.1 Purpose
* 22.2 Identifying the Asset
  * 22.2.1 Asset Identity and Economic Claims
  * 22.2.2 Standards and Runtime Representations
* 22.3 Movement and Supply Effects
  * 22.3.1 Transfer, Balance, and Supply Semantics
  * 22.3.2 Transfer-Effect Review
* 22.4 Spending Authority and Non-Standard Behavior
  * 22.4.1 Allowances, Operators, and Delegates
  * 22.4.2 Programmable, Restricted, and Wrapped Assets
* 22.5 Worked Example: Vault Deposit With Bad Token Assumptions

### 23. External Control Flow

* 23.1 Purpose
* 23.2 External Control Flow as an Invariant Boundary
  * 23.2.1 What Leaves the Local Boundary
  * 23.2.2 What Must Be Revalidated After Return
* 23.3 EVM Calls and Reentrancy Families
  * 23.3.1 Calls, Value, Returndata, Fallbacks, and Failure
  * 23.3.2 Single-Function, Cross-Function, Cross-Contract, and Read-Only Reentrancy
* 23.4 Hooks and Token-Controlled Execution
  * 23.4.1 Receiver Hooks and Safe Transfers
  * 23.4.2 Transfer Hooks, Callback Targets, and Side Effects
* 23.5 CPI, Messages, Replies, and Runtime-Specific Boundaries
  * 23.5.1 Solana CPI Privilege Propagation and Account Revalidation
  * 23.5.2 CosmWasm Submessages, Reply IDs, and Pending State
  * 23.5.3 Transaction Composition in Move and Sui
* 23.6 Defensive Patterns and Their Limits
  * 23.6.1 Checks-Effects-Interactions, Pull Payments, and Locks
  * 23.6.2 Program ID Pinning, Account Reloads, and Reply Correlation
* 23.7 Worked Example: Withdraw Before State Finalization

### 24. Accounting, Precision, and Rounding

* 24.1 Purpose
* 24.2 Money as Integer State
  * 24.2.1 Units, Decimals, and Display Values
  * 24.2.2 Fixed-Point Arithmetic Without Floating Point
* 24.3 Rounding as Value Transfer
  * 24.3.1 Rounding Direction Is a Security Decision
  * 24.3.2 Dust, Zero Outputs, and Threshold Effects
* 24.4 Share, Index, and Exchange-Rate Accounting
  * 24.4.1 Shares, Assets, and Claim Ratios
  * 24.4.2 Accrual Indices and Cumulative Precision Loss
* 24.5 Donation and Inflation Attacks
  * 24.5.1 Balance-Derived Accounting
  * 24.5.2 Empty-Vault and First-Depositor Manipulation
* 24.6 Review Method: Accounting Invariants
  * 24.6.1 Unit Maps and Rounding Tables
  * 24.6.2 Reference Models and Differential Tests
* 24.7 Worked Example: A Vault With Leaky Accounting

### 25. Lifecycle and Upgrade Risk

* 25.1 Purpose
* 25.2 Lifecycle as a Security Boundary
  * 25.2.1 Deployment Is a State Transition
  * 25.2.2 Upgradeability and Immutability as User Assumptions
* 25.3 Initialization and Configuration
  * 25.3.1 Constructors, Initializers, and Implementation Locking
  * 25.3.2 Parameters, Addresses, and Configuration Drift
* 25.4 Code Change With Persistent State
  * 25.4.1 Proxy Execution and Storage Context
  * 25.4.2 Storage Layout, Namespaces, and Compatibility
* 25.5 Runtime-Specific Upgrade Models
  * 25.5.1 EVM Proxies, Beacons, and Upgrade Functions
  * 25.5.2 Solana ProgramData and Upgrade Authority
  * 25.5.3 CosmWasm Migration and Admin Control
  * 25.5.4 Move Package Policies and Upgrade Capabilities
* 25.6 Migration as a State Transition
  * 25.6.1 Schema Changes and Invariant Preservation
  * 25.6.2 Versioning, Adapters, and Dependency Migration
* 25.7 Governance, Emergency Controls, and User Risk
  * 25.7.1 Upgrade Authority, Timelocks, and Multisigs
  * 25.7.2 Pause, Recovery, Rollback, and Communication
* 25.8 Review Method: Lifecycle Review Package
* 25.9 Worked Example: A Vault Upgrade That Breaks State

### 26. Randomness, Time, DoS, and Griefing

* 26.1 Unsafe Randomness from Block Data, Local State, and Predictable Inputs
* 26.2 Time Assumptions, Slot Assumptions, and Timestamp Dependence
* 26.3 Gas, Compute, Storage, and Account-Based DoS
* 26.4 Griefing Attacks with Low or Indirect Profit
* 26.5 Liveness Failures: Stuck Funds, Frozen Queues, and Broken Exits

### 27. Smart Accounts and Delegated Authority

* 27.1 Smart Accounts, User Operations, Bundlers, and Entry Points
* 27.2 Paymasters, Sponsored Transactions, and Griefing Risk
* 27.3 Session Keys, Delegated Permissions, and Scoped Authority
* 27.4 Social Recovery, Guardians, and Recovery Attacks
* 27.5 Signature Validation, Replay Domains, and Wallet Compatibility

---

## PART V - PROTOCOL APPLICATION SECURITY

### 28. AMMs and Liquidity Systems

* 28.1 Constant Product, Stable-Swap, and Concentrated Liquidity Models
* 28.2 Slippage, Price Impact, Fees, and Liquidity Depth
* 28.3 Pool Accounting, LP Shares, Fee Accrual, and Position Accounting
* 28.4 TWAPs, Manipulation Windows, Low-Liquidity Risk, and Toxic Flow
* 28.5 AMM Invariants and Failure Cases

### 29. Oracles and External Data

* 29.1 Oracle Types: Push, Pull, TWAP, Median, Signed, and Cross-Chain
* 29.2 Freshness, Latency, Staleness, Heartbeats, and Deviation Thresholds
* 29.3 Low-Liquidity Markets and Manipulated Reference Prices
* 29.4 Sequencer Downtime, Cross-Domain Prices, and Fallback Logic
* 29.5 Oracle Dependency Graphs, Circuit Breakers, and Recovery Modes

### 30. Lending, Leverage, and Liquidations

* 30.1 Collateral, Debt, Health Factors, and Borrow Limits
* 30.2 Interest Rates, Utilization Curves, Indexes, and Accrual
* 30.3 Liquidation Incentives, Close Factors, Auctions, and Keeper Behavior
* 30.4 Oracle Failure, Collateral Crashes, Bad Debt, and Insolvency
* 30.5 Socialized Losses, Protocol Recovery, and Risk Parameter Governance
* 30.6 Lending Market Invariants and Stress Scenarios

### 31. Vaults and Share Accounting

* 31.1 Deposits, Withdrawals, Shares, and Exchange Rates
* 31.2 ERC-4626 and Share-Based Accounting
* 31.3 Donation Attacks, First-Depositor Problems, and Share Inflation
* 31.4 Strategy Accounting, Locked Profit, Withdrawal Queues, and Liquidity Mismatch
* 31.5 Solvency, Share-Price, and Redemption Invariants

### 32. Staking, Rewards, and Restaking

* 32.1 Validator, Delegated, Liquid, and Protocol Staking Models
* 32.2 Reward Accrual, Distribution, Claim Logic, and Emission Schedules
* 32.3 Slashing Conditions, Operator Faults, and Delegator Exposure
* 32.4 Restaking, Shared Security, and Correlated Risk
* 32.5 Validator Concentration, Governance Influence, and Exit Risk

### 33. Stablecoins, Pegs, and Off-Chain Claims

* 33.1 Fiat-Backed, Crypto-Collateralized, Algorithmic, and RWA-Backed Designs
* 33.2 Peg Mechanisms, Redemption Paths, Liquidity Support, and Market Confidence
* 33.3 Collateral Quality, Haircuts, Liquidation Risk, and Reserve Composition
* 33.4 Reserve Proofs, Attestations, Custody, and Off-Chain Trust
* 33.5 De-Peg Scenarios, Bank Runs, Liquidity Spirals, and Contagion Paths

### 34. Governance and Tokenomics as Security Surfaces

* 34.1 Voting Power, Delegation, Quorum, Thresholds, and Proposal Execution
* 34.2 Timelocks, Payloads, Execution Targets, and Privileged Call Graphs
* 34.3 Governance Takeovers, Bribery, Flash-Loan Voting, and Vote Markets
* 34.4 Emergency Powers, Vetoes, Guardians, and Admin Backdoors
* 34.5 Emissions, Vesting, Unlocks, Liquidity Mining, and Reflexive Yield
* 34.6 Governance Tokens as Control Surfaces and Incentive Failure as Security Failure

---

## PART VI - CROSS-DOMAIN AND MODULAR SECURITY

### 35. Bridges and Cross-Chain Messaging

* 35.1 Bridge Models: Lock-Mint, Burn-Mint, Liquidity, and Canonical Bridges
* 35.2 Message Passing vs. Asset Bridging
* 35.3 Relayers, Channels, Packets, Timeouts, and Acknowledgements
* 35.4 Replay, Message Forgery, Finality Mismatch, and Domain Separation
* 35.5 Validator, Multisig, MPC, Light-Client, and IBC Trust Assumptions

### 36. Rollups, Sequencers, and Data Availability

* 36.1 Rollup Architecture: L1 Contracts, L2 State, Sequencers, and Settlement
* 36.2 Optimistic Rollups, Fraud Proofs, and Challenge Windows
* 36.3 ZK Rollups, Validity Proofs, and Verifier Contracts
* 36.4 Sequencer Power, Forced Inclusion, Censorship, Downtime, and Escape Hatches
* 36.5 Blobs, DA Sampling, DA Committees, Validiums, Volitions, and Alt-DA
* 36.6 Rollup Upgrade, Governance, and Bridge Contract Risk

### 37. ZK and Verifiable Computation Security

* 37.1 What ZK Proves and What It Does Not Prove
* 37.2 Circuit Constraints, Witnesses, and Underconstrained Computation
* 37.3 Provers, Verifiers, Trusted Setup, and Key Management Risk
* 37.4 Public Inputs, Soundness, Completeness, and Domain Assumptions
* 37.5 Auditing ZK Systems at Specification, Circuit, and Integration Layers

### 38. Cross-Domain MEV, Intents, and Solvers

* 38.1 Fragmented Liquidity, Multi-Chain State Dependencies, and Cross-Domain MEV
* 38.2 Bridge Latency, Finality Windows, Arbitrage, and Cross-Chain Races
* 38.3 L2 Sequencer MEV, Private Order Flow, and Shared Sequencing
* 38.4 Intents, Solvers, Keepers, Relayers, and Off-Chain Auction Mechanisms
* 38.5 Solver Trust, Order-Flow Privacy, Failed Settlement, and Refund Risk
* 38.6 MEV Mitigation Across Fragmented Execution Domains

---

## PART VII - OPERATIONS, ASSURANCE, AND RESEARCH METHOD

### 39. Wallet and User-Side Security

* 39.1 Seed Phrases, Private Keys, Derivation Paths, and Backup Risk
* 39.2 Blind Signing, Malicious dApps, and Transaction Simulation Gaps
* 39.3 Approval Phishing, Permit Phishing, and Drainer Workflows
* 39.4 Privacy, Metadata Leakage, Address Clustering, and User Deanonymization
* 39.5 User Experience as a Security Boundary

### 40. Off-Chain Infrastructure Security

* 40.1 RPC Trust, Rate Limits, Censorship, and Incorrect Responses
* 40.2 Indexer Desync, Event Misinterpretation, and Backend State Bugs
* 40.3 Frontend Compromise, DNS Hijack, and Malicious Transaction Construction
* 40.4 Backend Signers, Admin APIs, Bots, Keepers, and Automation Risk
* 40.5 Where Centralized Infrastructure Can Break Decentralized Systems

### 41. Supply Chain and Deployment Integrity

* 41.1 Package Dependencies, SDKs, Build Integrity, and Dependency Confusion
* 41.2 CI/CD Secrets, Deployment Keys, Release Pipelines, and Environment Drift
* 41.3 Contract Verification, Deployment Reproducibility, and Address Substitution
* 41.4 Frontend Builds, Wallet Connectors, CDN Risk, and Release Provenance
* 41.5 Security Controls for Teams Shipping Blockchain Software

### 42. Custody and Treasury Operations

* 42.1 Hot, Warm, Cold, and Treasury Wallet Models
* 42.2 Multisig Operations, MPC, HSMs, and Signing Policies
* 42.3 Withdrawal Limits, Approval Workflows, and Human Process Controls
* 42.4 Key Rotation, Backup, Disaster Recovery, and Insider Risk
* 42.5 Custody Failure Modes and Operational Resilience

### 43. Security Review Workflow

* 43.1 Reading Whitepapers, Docs, Code, Deployments, and Governance History
* 43.2 Extracting Trust Assumptions and Security Claims
* 43.3 Mapping Actors, Assets, Entry Points, Privileged Roles, and Dependency Graphs
* 43.4 Applying Part I's Threat-Model and Invariant Method During Review
* 43.5 Turning Attack Hypotheses into Depth Budgets, Tests, and Findings
* 43.6 Writing Clear Findings Without Overclaiming
* 43.7 Remediation Review, Retesting, and Disclosure Discipline

### 44. Testing, Fuzzing, and Simulation

* 44.1 Unit Tests, Integration Tests, Property Tests, and Scenario Tests
* 44.2 Fuzzing, Invariant Testing, Mainnet Forking, and Stateful Simulation
* 44.3 Differential Testing Against Models, Reference Implementations, and Competing Clients
* 44.4 Static Analysis, Symbolic Execution, and Tool-Assisted Review
* 44.5 Multi-VM Testing Workflows for EVM, Solana, Move, and CosmWasm
* 44.6 Tool Output Triage and False-Confidence Avoidance

### 45. Specification and Formal Verification

* 45.1 Specifications, Properties, and Proof Obligations
* 45.2 What Formal Verification Can Prove
* 45.3 What Formal Verification Cannot Prove
* 45.4 Bad Specifications, Missing Assumptions, and Model Gaps
* 45.5 Combining Formal Methods with Testing, Review, and Economic Reasoning

### 46. Monitoring, Incidents, and Reporting

* 46.1 Observability for Blocks, Peers, Validators, Finality, Mempools, and Protocol State
* 46.2 Detecting Reorgs, Missed Slots, Halts, Forks, Censorship, and Oracle Failure
* 46.3 Reconstructing Exploit Timelines and Protocol Incidents from Public Data
* 46.4 Root Cause, Exploit Mechanism, Preconditions, and Missed Invariants
* 46.5 Severity, Exploitability, Funds at Risk, and Blast Radius
* 46.6 Postmortems, Remediation, Retesting, and Long-Term Learning
