Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5718FB74D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F2C810E51E;
	Tue,  4 Jun 2024 15:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbV69o7d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E6210E519
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515079; x=1749051079;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ELcgB+Nnh4eLfE7qN34+zU12x7XqVm7a8VYqF9aF6qY=;
 b=LbV69o7d56TFAg/qB/ocYaedNF+O7+1GQdjzg/Tl0riTjejR4FiM6XeQ
 9Uk7Vhe/TTN+ybeEoazp/NK/dZ+Lti9bapAzEwXr/X4FphqznBnRxoHLj
 pFgw33K21vaardU4ChZWgQVeuFntGHkVzhRU4OKJZT9/UGI/mZf0MVF9s
 FDlsBfPAUfIDYv50f3ShlxDxGtEwPEqAoMbA7AG4EPLKRCkEizKugjCbz
 H57P1oMHtXv30Nsh7RY5gGhStJM54oOjZ0WBQDlzXoEK9oz+OPttVSW+w
 1ZhZxizBZ1/9PH1g9c5QLcPMl++YZ9NIf40K5IIFhv7xpNdHXbTZ51nbC A==;
X-CSE-ConnectionGUID: SbwuQwy1SJKT0SoGG+MUSg==
X-CSE-MsgGUID: j1IACLV+QAWnuG0GUHlkHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733586"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733586"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:16 -0700
X-CSE-ConnectionGUID: VCnCh1SrQCSplVmZ3Wdl5g==
X-CSE-MsgGUID: BBOEV+tkQge9oKH6ymO+pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828028"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 59/65] drm/i915: pass dev_priv explicitly to TRANS_DDI_FUNC_CTL
Date: Tue,  4 Jun 2024 18:26:17 +0300
Message-Id: <4ccf75561aa0fb209fd71c85e9089b0350570fd6.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_DDI_FUNC_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +++++---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 29 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_display.c  |  9 ++++--
 .../gpu/drm/i915/display/intel_display_irq.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++--
 drivers/gpu/drm/i915/display/intel_fdi.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
 drivers/gpu/drm/i915/gvt/display.c            | 25 +++++++++-------
 drivers/gpu/drm/i915/gvt/handlers.c           |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               |  2 +-
 11 files changed, 58 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9beb94494b2b..acc80d439352 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -796,7 +796,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 
 		/* select data lane width */
-		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
 		tmp &= ~DDI_PORT_WIDTH_MASK;
 		tmp |= DDI_PORT_WIDTH(intel_dsi->lane_count);
 
@@ -822,7 +823,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 		/* enable DDI buffer */
 		tmp |= TRANS_DDI_FUNC_ENABLE;
-		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans), tmp);
+		intel_de_write(dev_priv,
+			       TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans), tmp);
 	}
 
 	/* wait for link ready */
@@ -1333,7 +1335,8 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	/* disable ddi function */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans),
+		intel_de_rmw(dev_priv,
+			     TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans),
 			     TRANS_DDI_FUNC_ENABLE, 0);
 	}
 
@@ -1697,7 +1700,8 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dsi_trans));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		case TRANS_DDI_EDP_INPUT_A_ON:
 			*pipe = PIPE_A;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c3fc53376ce..c5571be3c66e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -606,7 +606,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
 			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), ctl2);
 	}
 
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 		       intel_ddi_transcoder_func_reg_val_get(encoder,
 							     crtc_state));
 }
@@ -626,7 +626,8 @@ intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
 
 	ctl = intel_ddi_transcoder_func_reg_val_get(encoder, crtc_state);
 	ctl &= ~TRANS_DDI_FUNC_ENABLE;
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+		       ctl);
 }
 
 void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
@@ -641,7 +642,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 		intel_de_write(dev_priv,
 			       TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
 
-	ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	ctl = intel_de_read(dev_priv,
+			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
 	drm_WARN_ON(crtc->base.dev, ctl & TRANS_DDI_HDCP_SIGNALLING);
 
@@ -660,7 +662,8 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 		ctl &= ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
 	}
 
-	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
+	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
+		       ctl);
 
 	if (intel_has_quirk(display, QUIRK_INCREASE_DDI_DISABLED_TIME) &&
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
@@ -684,7 +687,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 	if (drm_WARN_ON(dev, !wakeref))
 		return -ENXIO;
 
-	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 		     hdcp_mask, enable ? hdcp_mask : 0);
 	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
 	return ret;
@@ -718,7 +721,8 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	else
 		cpu_transcoder = (enum transcoder) pipe;
 
-	tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	tmp = intel_de_read(dev_priv,
+			    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
 	switch (tmp & TRANS_DDI_MODE_SELECT_MASK) {
 	case TRANS_DDI_MODE_SELECT_HDMI:
@@ -782,7 +786,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP) && port == PORT_A) {
 		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(TRANSCODER_EDP));
+				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP));
 
 		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
 		default:
@@ -823,7 +827,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		}
 
 		tmp = intel_de_read(dev_priv,
-				    TRANS_DDI_FUNC_CTL(cpu_transcoder));
+				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 		intel_display_power_put(dev_priv, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
 					trans_wakeref);
 
@@ -3025,7 +3029,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 		if (is_mst) {
 			enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
-			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder),
+			intel_de_rmw(dev_priv,
+				     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 				     TGL_TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK,
 				     0);
 		}
@@ -3759,7 +3764,8 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
 
 		master_select = REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl2);
 	} else {
-		u32 ctl = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+		u32 ctl = intel_de_read(dev_priv,
+				        TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
 		if ((ctl & TRANS_DDI_PORT_SYNC_ENABLE) == 0)
 			return INVALID_TRANSCODER;
@@ -3815,7 +3821,8 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u32 temp, flags = 0;
 
-	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+	temp = intel_de_read(dev_priv,
+			     TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 	if (temp & TRANS_DDI_PHSYNC)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 952780028630..62f8300c73a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3507,7 +3507,8 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 
 	with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
-		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
@@ -3622,7 +3623,8 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
-			tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
+			tmp = intel_de_read(dev_priv,
+					    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
 		if (!(tmp & TRANS_DDI_FUNC_ENABLE))
 			continue;
@@ -3729,7 +3731,8 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 		return false;
 
 	if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(pipe_config->cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_DDI_FUNC_CTL(dev_priv, pipe_config->cpu_transcoder));
 
 		if ((tmp & TRANS_DDI_EDP_INPUT_MASK) == TRANS_DDI_EDP_INPUT_A_ONOFF)
 			pipe_config->pch_pfit.force_thru = true;
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 76bba95410e7..036f77c2702d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -934,7 +934,8 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
 	}
 
 	/* Get PIPE for handling VBLANK event */
-	val = intel_uncore_read(&dev_priv->uncore, TRANS_DDI_FUNC_CTL(dsi_trans));
+	val = intel_uncore_read(&dev_priv->uncore,
+				TRANS_DDI_FUNC_CTL(dev_priv, dsi_trans));
 	switch (val & TRANS_DDI_EDP_INPUT_MASK) {
 	case TRANS_DDI_EDP_INPUT_A_ON:
 		pipe = PIPE_A;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 715d2f59f565..00fdcbc28e9b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1009,7 +1009,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	clear_act_sent(encoder, old_crtc_state);
 
-	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
+	intel_de_rmw(dev_priv,
+		     TRANS_DDI_FUNC_CTL(dev_priv, old_crtc_state->cpu_transcoder),
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC, 0);
 
 	wait_for_act_sent(encoder, old_crtc_state);
@@ -1230,7 +1231,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 
 	clear_act_sent(encoder, pipe_config);
 
-	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
+	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, trans), 0,
 		     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 
 	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 007e0f9e9304..d33befd7994d 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -34,7 +34,8 @@ static void assert_fdi_tx(struct drm_i915_private *dev_priv,
 		 * so pipe->transcoder cast is fine here.
 		 */
 		enum transcoder cpu_transcoder = (enum transcoder)pipe;
-		cur_state = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
+		cur_state = intel_de_read(dev_priv,
+					  TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) & TRANS_DDI_FUNC_ENABLE;
 	} else {
 		cur_state = intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index ba3eca919900..3ebe035f382e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -47,7 +47,8 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
 				     0, HDCP_LINE_REKEY_DISABLE);
 		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
 			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
-			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
+			intel_de_rmw(dev_priv,
+				     TRANS_DDI_FUNC_CTL(dev_priv, hdcp->cpu_transcoder),
 				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7704ead5002d..19498ee455fa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -83,7 +83,7 @@ assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
 				     enum transcoder cpu_transcoder)
 {
 	drm_WARN(&dev_priv->drm,
-		 intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)) &
+		 intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) &
 		 TRANS_DDI_FUNC_ENABLE,
 		 "HDMI transcoder function enabled, expecting disabled\n");
 }
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 95b4b76d3b45..c66d6d3177c8 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -200,11 +200,11 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		}
 
 		for (trans = TRANSCODER_A; trans <= TRANSCODER_EDP; trans++) {
-			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(trans)) &=
+			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, trans)) &=
 				~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 				  TRANS_DDI_PORT_MASK | TRANS_DDI_FUNC_ENABLE);
 		}
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			  TRANS_DDI_PORT_MASK);
 
@@ -287,7 +287,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				(DDI_BUF_CTL_ENABLE | DDI_INIT_DISPLAY_DETECTED);
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
 				~DDI_BUF_IS_IDLE;
-			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_EDP)) |=
+			vgpu_vreg_t(vgpu,
+				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 TRANS_DDI_FUNC_ENABLE);
 			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
@@ -316,7 +317,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				DDI_BUF_CTL_ENABLE;
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
 				~DDI_BUF_IS_IDLE;
-			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
+			vgpu_vreg_t(vgpu,
+				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
 				 TRANS_DDI_FUNC_ENABLE);
@@ -346,7 +348,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				DDI_BUF_CTL_ENABLE;
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
 				~DDI_BUF_IS_IDLE;
-			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
+			vgpu_vreg_t(vgpu,
+				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
 				 TRANS_DDI_FUNC_ENABLE);
@@ -410,10 +413,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_B);
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIB_DETECTED;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_B << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
@@ -436,10 +439,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_C);
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTC_HOTPLUG_CPT;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_C << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
@@ -462,10 +465,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_D);
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTD_HOTPLUG_CPT;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_D << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index f2af234769bf..24abe70afe46 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -657,7 +657,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 	u32 dp_br, link_m, link_n, htotal, vtotal;
 
 	/* Find DDI/PORT assigned to TRANSCODER_A, expect B or D */
-	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(TRANSCODER_A)) &
+	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &
 		TRANS_DDI_PORT_MASK) >> TRANS_DDI_PORT_SHIFT;
 	if (port != PORT_B && port != PORT_D) {
 		gvt_dbg_dpy("vgpu-%d unsupported PORT_%c\n", vgpu->id, port_name(port));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c8488877dd68..14f4060dd573 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3953,7 +3953,7 @@ enum skl_power_gate {
 #define _TRANS_DDI_FUNC_CTL_EDP		0x6F400
 #define _TRANS_DDI_FUNC_CTL_DSI0	0x6b400
 #define _TRANS_DDI_FUNC_CTL_DSI1	0x6bc00
-#define TRANS_DDI_FUNC_CTL(tran) _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL_A)
+#define TRANS_DDI_FUNC_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL_A)
 
 #define  TRANS_DDI_FUNC_ENABLE		(1 << 31)
 /* Those bits are ignored by pipe EDP since it can only connect to DDI A */
-- 
2.39.2

