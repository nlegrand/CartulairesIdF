ENC_TEI_DIR=enc_tei

ORIGINAL_ENC_TEI= $(addprefix $(ENC_TEI_DIR)/, Chartres-N-D.xml Corbeil-S-Spire.xml Epernon.xml Maintenon.xml Montmartre.xml Morienval.xml Orleans-S-Croix.xml Paris-S-Martin-des-Champs.xml Paris-S-Merri.xml Pontoise-Hotel-Dieu.xml Pontoise-S-Martin.xml Port-Royal.xml Roche.xml S-Christophe-en-Halatte.xml S-Germain-en-Laye.xml S-Gondon.xml S-Leu-d-Esserent.xml Vaux-de-Cernay.xml)

.PHONY: get_enc_tei clean

get_enc_tei: $(ENC_TEI_DIR) $(ORIGINAL_ENC_TEI)

$(ENC_TEI_DIR):
	mkdir $@

$(ORIGINAL_ENC_TEI):
	wget http://elec.enc.sorbonne.fr/cartulaires/src/$(subst $(ENC_TEI_DIR)/,,$@) -O $@

clean:
	rm -rf $(ENC_TEI_DIR)
