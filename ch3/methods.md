
## Methods

### Site

Measurements were made at the University of Illinois Energy Farm, ~5 km south of Urbana, Illinois (40.06N, 88.19W, elevation 220 m). Climate, soils, and site establishment have been described in detail elsewhere [@Zeri:2011er; @Smith:2013cj; @Masters:2016kw]. Briefly, the site has a highly seasonal continental climate with a mean annual temperature of 11 °C (below 0 °C December-February, over 20 °C June-August) and average annual precipitation of approximately 1 m, with approximately half falling as rain during the growing season (May-September). Soils are deep and loess-derived, mapped as Argiudolls of the Dana, Flanagan, and Blackberry series of silt loams. Four cropping treatments, each representative of a possible bioenergy cropping scheme, were established in 2008. The treatments were a three-year maize-maize-soybean rotation that was tilled annually and managed in accordance with typical Central Illinois cropping practices, a prairie restoration mix of 28 native species [@Zeri:2011er], and two perennial grasses: *Miscanthus × giganteus* Greef and Deuter ex Hodkinson and Renvoize (*Miscanthus*; cv "Illinois") and *Panicum virgatum* L. (Switchgrass; cv "Cave-in-Rock"). The site was planted in a randomized complete block design replicated five times, with four blocks of 0.7 Ha plots and one block of 3.8 Ha plots [@Masters:2016kw]. Each large plot was instrumented to record weather, crop growth parameters, and ecosystem C and water exchange.

Maize and soybeans were planted and harvested according to local practice. Switchgrass and prairie were planted in 2008 and not subsequently replanted; *Miscanthus* survived poorly the first winter and therefore the large *Miscanthus* plot was replanted in 2009. Standing biomass from perennials was mowed and baled after senescence each winter.

Maize was fertilized each year with 202 kg N Ha^-1^ yr^-1^ before planting; no fertilizer was applied to soybean. Switchgrass was fertilized with 56 kg N Ha^-1^ yr^-1^ applied before crop emergence. Initially, neither prairie nor *Miscanthus* were fertilized. In 2014 the small *Miscanthus* plots were split and one half of each 0.7 Ha plot remained unfertilized while the other half, and the entire 3.8 Ha plot, recieved 56 N Ha^-1^. For all 2014 *Miscanthus* values, we report means averaged across fertilizer treatments.

### Rhizotron tube installation and maintenence

To observe root systems over time, in May of 2009 we installed 96 clear acrylic minirhizotron tubes. We placed 24 tubes in each crop, with 4 tubes (one in each quadrant) per 0.7 Ha plot and 8 tubes (2 in each quadrant) per 3.8 Ha plot. Each tube was 1.8 m L $\times$ 51 mm ID $\times$ 57 mm OD (Bartz Technology corporation, Carpinteria CA USA) and was installed using a tractor-mounted hydraulic probe (Giddings Machine Co., Windsor, CO USA) at an angle 30° from vertical [@bragg:1983pi]. For perennial crops, we placed tubes randomly within each quadrant. For maize and soybean, we placed half the tubes in each plot directly within rows and the other half midway between rows. Each tube's vertical angle was aligned along a row, so comparisons of root density between depths in a single tube were not confounded with row placement. Each tube was inserted until 22 cm remained aboveground or until it was stopped by soil resistance, allowing image collection from the soil surface to a depth between 115 and 140 cm. The aboveground portion of each tube was capped to minimize intrusion of light, water, or temperature swings.

Tubes in maize and soybean plots were installed immediately after planting every spring and removed after harvest to allow tillage. The tubes in perennial crops remained permanently installed, but each winter a portion of the permanent tubes developed leaks in their bottom end caps, and were replaced the following spring in a freshly bored hole at least 1 m away from the previous location. Of the original 72 tubes 'permanently' installed at the site, 39 survived to the end of the experiment in their initial location. Because of ongoing tube failures after repeated installation and a limited stock of replacement tubes, in 2014 we were only able to collect images from 8 tubes in maize, all in the 3.8 Ha block.

### Image collection

From 2010 through 2013, we collected images approximately once a month during the growing season (May to October) using a portable minirhizotron camera (BTC-100x; Bartz Technology). In each session, we first used a long-handled swab to clean dust and condensation off the inner surface of the tube. We then mounted the camera into the tube and collected images at ~6-cm vertical increments until the camera reached the bottom of the tube (typically ~125 cm). Each tube's offset from the soil surface was remeasured periodically and used to correct image depth estimates. The 6-cm vertical increment came from collecting images every five stops of the depth-indexing handle (13.5 mm per stop $\to (5 \cdot 1.35)\cos(30°) = 5.8$ cm) and was chosen as the spacing that best balanced adequate sampling from each tube against the time required to process each image after collection [@johnson:2001fy].

The resulting images were 754x510 pixels and the camera was calibrated daily by photographing a 1x1 mm grid attached to the outside of a short length of rhizotron tube (same viewing distance as the roots). The final maximum image resolution was ~0.025 mm per pixel.

### Image processing

In the laboratory, we recorded the length and diameter of every visible root segment by manual tracing using WinRhizo TRON MF v. 2009a (Regent Instruments, Québec QC, Canada) and performed all downstream analyses on the total volume of root visible in each image assuming each root segment was a perfect conic section with dimensions (Diameter~start~ $\times$ Diameter~end~ $\times$ length). Rhizotron methods have low success distinguishing living from dead root tissue [@Iversen:2011eg], so we made no attempt to classify tissue death status. Thus all our root density estimates include visible root necromass.

To minimize human variation in tracing, all technicians were trained using the same set of representative images and the agreement in traced root volume from each image was taken as an estimate of the variation among workers given the same task. The variation among workers was less than the within-worker variation (95% intervals: sd among workers = 1.2-1.6 mm^3^ img^-1^, sd within worker = 2.4-2.7 mm^3^ img^-1^; data not shown), indicating that technician identity was a minor contributor to the variation in the tracing step. Since these agreement scores were taken from novice tracers immediately after the completion of their training, it is likely that they somewhat overstate the actual variation from experienced technicians.

After tracing, each season's data were aggregated using a set of custom R scripts to adjust observed root volumes for differences in image magnification, remove data from images with poor image quality, convert locations within each tube to depths below the soil surface, and aggregate results across experimental blocks. The full data and all scripts are available online (https://github.com/infotroph/efrhizo).

### Root mass measurements

To compare estimates of root density from minirhizotrons and destructive coring methods, we collected deep-soil cores. In August of 2011 and of 2014, when aboveground biomass of all four crops was near its yearly maximum, we collected soil cores to a depth ≥ 100 cm from 24 locations within each crop (4 from each 0.7 Ha plot, 8 from each 3.8 Ha plot) using a tractor-mounted hydraulic corer (Giddings Machine Co.). Because the heavy coring equipment necessitated trampling a large (~2-3 m) quadrat at every location, coring locations were all within 3 m of a plot edge. At each location, three 3.8 cm diameter cores were collected from within a 1-m area. We divided each core into five depth horizons (0-10, 10-30, 30-50, 50-100, and 100+ cm), pooled horizons from the same location, then separated root and rhizome material from soil by hydropneumatic elutriation [@Roberts:1993vf], separated rhizomes from roots by hand-sorting, oven-dried both to constant mass, and weighed them.

Since individual locations within a plot are pseudoreplicates, we calculated block means of root mass per cm^3^ soil (for depth-resolved analyses) or per m^2^ ground area (for whole-profile totals), log-transformed the result, then fitted a mixed-effects linear model where ln(depth) is a continuous covariate, crop and year are categorical fixed effects (@Eq:coremix), block is a categorical random effect (@Eq:corerdm), and residuals follow a first-order autoregressive function within each level of the (block by crop by year) interaction to account for the autocorrelation between adjacent depths (@Eq:coreresid).

$$ \ln( y_{ijk\ell} ) = 
	\beta_i \textrm{crop}_i
	+ \beta_j \textrm{year}_j
	+ \beta_k \ln( \textrm{depth}_k )
	+ \gamma_\ell \textrm{block}_\ell
	+ \epsilon_{ijk\ell} $$ {#eq:coremix}

$$ \gamma_\ell \sim N(0, \psi^2_{ijk}) $$ {#eq:corerdm}

$$ \epsilon_{ijk\ell} \sim N(0, \sigma^2 \lambda_{ijk\ell}),~
	\textrm{corr}( \epsilon_{ijkl}, \epsilon_{ijk\ell^\prime} ) \sim \phi^{|\ell^\prime - \ell|} $$ {#eq:coreresid}

All root core statistics were performed in R version 3.3.0 [@R330:2016] using nlme 3.1 [@Pinheiro:2016nlme] for linear model fits followed by lsmeans 2.23 [@Lenth:2016lsmeans] for predicted marginal means and post-hoc treatment comparisons. The data from 2011 have been presented previously [@AndersonTeixeira:2013bx]; we limit our discussion here to the comparison against simultaneously collected rhizotron images from the same plots.

### Bayesian modeling of root volume

To convert root areas estimated with error from minirhizotron images into an estimate of root volume distribution across depth, we used a Bayesian model to integrate image data with prior knowledge about plant architecture and growth patterns to produce a mathematically tractable and physiologically defensible estimate of root density in each crop. The basic structure of the model was formulated by Sonderegger et al. [-@Sonderegger:2013id] for root production estimates; we adopt it here with modifications to estimate standing root volume.

We began with a log-linear mixed model of root volume (mm^3^ root observed per mm^2^ of image traced) similar to the one used for root mass from cores (@Eq:coremix). On a given sampling day, the expected log root density $\mu_{ijk}$ (@Eq:rzmu) declines with log depth according to a crop-specific intercept $\alpha_i$ and slope $\beta_i$, and the intercept varies for each sampling location (i.e. minirhizotron tube) as a zero-centered random effect $\gamma_j \sim N(0,~\sigma^\textrm{tube})$: 

$$ \mu_{ijk} = \alpha_i + \gamma_j + \beta_i \ln( \textrm{depth}_k ) + \epsilon_i. $$ {#eq:rzmu}

We treated individual minirhizotron tubes as the unit of replication (rather than block means as in the core data) because the observed variation among individual minirhizotron tubes was much larger than the variation among blocks and therefore subsumes the block effects; it should be possible to calculate the block effect, if it is needed, as the mean of the estimated tube effect coefficents of all tubes in that block.

Next, we added an empirical correction for reduced minirhizotron root detection efficiency near the soil surface. The cause of this underdetection is still unclear, but it is commonly observed in minirhizotron studies [@bragg:1983pi; @taylor:1990gf; @Samson:1994gp; @Ephrath:1999vq; @Gray:2016fd]. We corrected for this underdetection by noting that when measured directly it appears to be sigmoid with depth, and when not measured it can be inferred by a visible deviation from the log-linear depth trend in near-surface layers, meaning the correction can be found by solving for a sigmoid underdetection function that brings near-surface observations back toward the linear depth model of @Eq:rzmu. Then the expected density of *detected* roots $\hat\mu$ (@Eq:rzmuhat) is:

$$ \hat\mu_{ijk} = \mu_{ijk} \textrm{logistic} (\alpha_i^{\textrm{surface}} + \beta_i^{\textrm{surface}} \textrm{depth} _k), $$ {#eq:rzmuhat}

where $\alpha_i^{\textrm{surface}}$ is the depth at which 50% of roots are detected, $\beta_i^{\textrm{surface}}$ scales the rate of detection increase with depth, and both are estimated from observations but strongly informed by prior research (@Sec:priors).

Finally, we noted that individual images are small (~240 mm^2^) compared to the scale of root system heterogeneity, and many images contain no visible roots even when root density is high. The observed root volume in an individual image (@Eq:rzmix) therefore follows a mixture distribution [@Sonderegger:2013id]:

$$ y_{ijk} \sim  \begin{cases}
	0,~\textrm{with probability} ~ 1-\phi_{ijk} \\
	\textrm{logN} (\hat\mu_{ijk}, \sigma^2), ~\textrm{with probability} ~ \phi_{ijk}
	\end{cases}, $$ {#eq:rzmix}

where the probability $\phi_{ijk}$ of observing any roots (@Eq:rzphi) increases with expected root density $\hat\mu_{ijk}$ (@Eq:rzmuhat) as

$$ \textrm{logit} (\phi_{ijk}) = \alpha^{\textrm{detect}} + \beta^{\textrm{detect}} \hat\mu_{ijk}. $$ {#eq:rzphi}

We fitted this model separately to each day of data using the Rstan [@stanteam:2016rstan] interface to the Stan probabilistic programming language [@StanDevelopmentTeam:2016tw], which computes the joint likelihood of all model parameters given the observed data and uses Hamiltonian Monte Carlo sampling to draw from their posterior distributions. For each model, we ran five independent chains for 5000 iterations each, then discarded the first 1000 iterations as warmup, giving a total of 20000 Monte Carlo samples for each parameter and an effective posterior sample size (after accounting for autocorrelation) of at least 1000. We checked for convergence both visually by plotting the chains and by checking that the potential scale reduction factor was close to 1.0 [@Gelman:1992ht]. All scripts needed to reproduce the analysis are available online (https://github.com/infotroph/efrhizo).

