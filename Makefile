TALK_NAME	:= dresden-nov-2017

# Variables for compilation
LATEX		:= latex
PDFLATEX	:= pdflatex
BIBTEX		:= bibtex
PDFCROP		:= pdfcrop
MPOST		:= mpost
PYTHON		:= python3

TALK_SRC	:= DHarries_E6_models.tex

TALK_ABSTRACT	:= DHarries_E6_models_abstract.tex

TALK_FIGS_DIR	:= figures
TALK_DIAGS_DIR	:= $(TALK_FIGS_DIR)

TALK_FEYNMP	:= \
		$(TALK_DIAGS_DIR)/fermionloop.pdf \
		$(TALK_DIAGS_DIR)/fermionloop2.pdf \
		$(TALK_DIAGS_DIR)/scalarcubicloop.pdf \
		$(TALK_DIAGS_DIR)/scalarquarticloop.pdf \
		$(TALK_DIAGS_DIR)/leptoquarkdecay.pdf \
		$(TALK_DIAGS_DIR)/exoticsleptondecay.pdf \
		$(TALK_DIAGS_DIR)/inerthiggsinodecay1.pdf \
		$(TALK_DIAGS_DIR)/inerthiggsinodecay2.pdf

TALK_FIGS	:= \
		$(TALK_FIGS_DIR)/all_models_tuning_vs_higgs_bw_var.png \
		$(TALK_FIGS_DIR)/atlas_cmssm.pdf \
		$(TALK_FIGS_DIR)/atlas_z_prime.pdf \
		$(TALK_FIGS_DIR)/bulletcluster.jpg \
		$(TALK_FIGS_DIR)/ce6ssm_higgs_mass.pdf \
		$(TALK_FIGS_DIR)/ce6ssm_tuning.pdf \
		$(TALK_FIGS_DIR)/CMSSM_gauge_rgflow.pdf \
		$(TALK_FIGS_DIR)/cmssm_mupos1TeV_m12m0_Omega.png \
		$(TALK_FIGS_DIR)/cmssm_mupos1TeV_m12m0_SigmaSIProton.png \
		$(TALK_FIGS_DIR)/cmssm_mupos1TeV_MGluMSu6_exclusions.png \
		$(TALK_FIGS_DIR)/cmssm_mupos400GeV_m12A0_Mhh.png \
		$(TALK_FIGS_DIR)/cmssm_mupos400GeV_m12m0_Mhh.png \
		$(TALK_FIGS_DIR)/cmssm_mupos400GeV_m12m0_Omega.png \
		$(TALK_FIGS_DIR)/cmssm_mupos400GeV_m12m0_SigmaSIProton.png \
		$(TALK_FIGS_DIR)/cmssm_mupos400GeV_MGluMSu6_exclusions.png \
		$(TALK_FIGS_DIR)/cmssm_pos_mueff_1TeV_MSu6_MGlu_Mhh1.png \
		$(TALK_FIGS_DIR)/CNMSSM_BG_m0m12.pdf \
		$(TALK_FIGS_DIR)/CNMSSM_BG_mh_m0m12.pdf \
		$(TALK_FIGS_DIR)/CNMSSM_GUT_J_m0m12.pdf \
		$(TALK_FIGS_DIR)/CNMSSM_GUT_J_mh_m0m12.pdf \
		$(TALK_FIGS_DIR)/CNMSSM_pdf_mz_m0m12.pdf \
		$(TALK_FIGS_DIR)/CNMSSM_pdf_mz_mh_m0m12.pdf \
		$(TALK_FIGS_DIR)/cse6ssm_300GeV_mueff_spectrum.pdf \
		$(TALK_FIGS_DIR)/cse6ssm_mupos1TeV_m12m0_Omega.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos1TeV_m12m0_SigmaSIProton.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos1TeV_MGluMSu6_exclusions.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos400GeV_m12A0_Mhh.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos400GeV_m12m0_Mhh.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos400GeV_m12m0_Omega.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos400GeV_m12m0_SigmaSIProton.png \
		$(TALK_FIGS_DIR)/cse6ssm_mupos400GeV_MGluMSu6_exclusions.png \
		$(TALK_FIGS_DIR)/cse6ssm_pos_mueff_1TeV_MSu6_MGlu_Mhh1.png \
		$(TALK_FIGS_DIR)/e6eta_tb10_tuning_vs_higgs_bw_var.png \
		$(TALK_FIGS_DIR)/e6inert_tb10_tuning_vs_higgs_bw_var.png \
		$(TALK_FIGS_DIR)/e6psi_tb10_tuning_vs_higgs_bw_var.png \
		$(TALK_FIGS_DIR)/e6ssm_light_zprime_BM1_all_tuning_data_bw_var.png \
		$(TALK_FIGS_DIR)/e6ssm_light_zprime_BM2_all_tuning_data_bw_var.png \
		$(TALK_FIGS_DIR)/e6ssm_mssm_benchmark_points_tuning_vs_cutoff_bw_var.png \
		$(TALK_FIGS_DIR)/gambit_cmssm_mchi0_omega.pdf \
		$(TALK_FIGS_DIR)/higgs_mass_prl.pdf \
		$(TALK_FIGS_DIR)/mssm_BM1_all_tuning_data_bw_var.png \
		$(TALK_FIGS_DIR)/mssm_BM2_all_tuning_data_bw_var.png \
		$(TALK_FIGS_DIR)/mssm_higgs_tuning.pdf \
		$(TALK_FIGS_DIR)/mssm_stop_tuning_bw_var.png \
		$(TALK_FIGS_DIR)/neutrino_masses.pdf \
		$(TALK_FIGS_DIR)/SM_gauge_rgflow.pdf \
		$(TALK_FIGS_DIR)/susyparticles_sm_cropped.png \
		$(TALK_FIGS_DIR)/susyparticles_sm.png \
		$(TALK_FIGS_DIR)/treelevel_higgs_upperbound_plot.pdf

TALK_EXPORTED := \
		$(TALK_SRC) \
		$(TALK_ABSTRACT) \
		$(TALK_FEYNMP) \
		$(TALK_FIGS)

TALK_PDF	:= $(TALK_SRC:.tex=.pdf)

ABSTRACT_PDF	:= $(TALK_ABSTRACT:.tex=.pdf)

LATEX_TMP	:= \
		$(patsubst %.pdf, %.aux, $(TALK_PDF)) \
		$(patsubst %.pdf, %.log, $(TALK_PDF)) \
		$(patsubst %.pdf, %.toc, $(TALK_PDF)) \
		$(patsubst %.pdf, %.out, $(TALK_PDF)) \
		$(patsubst %.pdf, %.spl, $(TALK_PDF)) \
		$(patsubst %.pdf, %.nav, $(TALK_PDF)) \
		$(patsubst %.pdf, %.snm, $(TALK_PDF)) \
		$(patsubst %.pdf, %.blg, $(TALK_PDF)) \
		$(patsubst %.pdf, %.bbl, $(TALK_PDF)) \
		$(patsubst %.pdf, %.aux, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.log, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.toc, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.out, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.spl, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.nav, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.snm, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.blg, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.bbl, $(ABSTRACT_PDF)) \
		$(patsubst %.pdf, %.aux, $(TALK_FEYNMP)) \
		$(patsubst %.pdf, %.log, $(TALK_FEYNMP)) \
		$(patsubst %.pdf, %.1, $(TALK_FEYNMP)) \
		$(patsubst %.pdf, %.t1, $(TALK_FEYNMP)) \
		$(patsubst %.pdf, %.mp, $(TALK_FEYNMP))

.PHONY: all all-pdf clean distclean talk-zip talk-tarball

all: all-pdf

all-pdf: $(TALK_PDF) $(ABSTRACT_PDF)

clean:
	-rm -f $(LATEX_TMP)

distclean: clean
	-rm -f $(TALK_FIGS_DIR)/SM_gauge_rgflow.pdf
	-rm -f $(TALK_FIGS_DIR)/CMSSM_gauge_rgflow.pdf
	-rm -f $(TALK_FEYNMP)
	-rm -f $(ABSTRACT_PDF)
	-rm -f $(TALK_PDF)

$(TALK_FEYNMP): $(TALK_DIAGS_DIR)/%.pdf: $(TALK_DIAGS_DIR)/%.tex
	cd $(TALK_DIAGS_DIR) && \
	$(PDFLATEX) $*.tex && \
	$(MPOST) $*.mp && \
	$(PDFLATEX) $*.tex && \
	$(PDFLATEX) $*.tex && \
	$(PDFCROP) $*.pdf $*.pdf

$(TALK_FIGS_DIR)/SM_gauge_rgflow.pdf: $(TALK_FIGS_DIR)/plot_sm_running.py \
	$(TALK_FIGS_DIR)/SM_rgflow.dat
	$(PYTHON) $^ --output-file $@
	$(PDFCROP) $@ $@

$(TALK_FIGS_DIR)/CMSSM_gauge_rgflow.pdf: $(TALK_FIGS_DIR)/plot_cmssm_running.py \
	$(TALK_FIGS_DIR)/CMSSM_rgflow.dat
	$(PYTHON) $^ --output-file $@
	$(PDFCROP) $@ $@

$(TALK_PDF): $(TALK_SRC) $(TALK_FIGS) $(TALK_FEYNMP)
	$(PDFLATEX) $<
	$(PDFLATEX) $<

$(ABSTRACT_PDF): $(TALK_ABSTRACT)
	$(PDFLATEX) $<
	$(PDFLATEX) $<

talk-zip: $(TALK_PDF)
	zip -r $(TALK_NAME).zip $(TALK_EXPORTED)

talk-tarball: $(TALK_PDF)
	tar -czf $(TALK_NAME).tar.gz $(TALK_EXPORTED)
