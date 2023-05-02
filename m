Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 688C66F4638
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 16:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3DF910E586;
	Tue,  2 May 2023 14:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63B910E58B;
 Tue,  2 May 2023 14:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683038385; x=1714574385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SnyevPoRkEoPgtMQGsqmvSG5GxxLI9/gUFEEuiD9v00=;
 b=k6kcOKd76QkrdAyIqs3Osqbh2Zf7ObIdoGT0SYheCPGf5KbHRoxnl++Y
 FrcGRBgMqBm5A4fWjwSNzzo2V5R431f/7vo4c9Ug7JeLXRGPzrrfGdgwt
 hCPq6Y3FUUKU8/TsFo3yNk3FzDDb4yGtMM/AI9XGc+eGSdgTfpnm1C08U
 jmxw0DNxFSkKvjH+2kMl0T7X52GRk/kP54USMoqRrRMDfGsJi8YA4BCUw
 3qD7e7aYL1n8HcR4is0RE44WiiPo9MNMm6ufjv4fUjYfoeYBBLX7/6o08
 TEXnVA2Z4ic+L92y7rL85Y+xzaP0euadobbIJ7OfYEd+18rARPCJeZdPX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="351396959"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="351396959"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 07:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="698991838"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="698991838"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 02 May 2023 07:39:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 May 2023 17:39:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  2 May 2023 17:39:03 +0300
Message-Id: <20230502143906.2401-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/11] drm/i915: Introduce
 crtc_state->enhanced_framing
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Track DP enhanced framing properly in the crtc state instead
of relying just on the cached DPCD everywhere, and hook it
up into the state check and dump.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_crt.c              |  2 ++
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c  |  5 +++--
 drivers/gpu/drm/i915/display/intel_ddi.c              | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_display.c          |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_link_training.c |  2 +-
 7 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 920d570f7594..534546ea7d0b 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -141,7 +141,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 
 		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
 			     TRANS_DP_ENH_FRAMING,
-			     drm_dp_enhanced_frame_cap(intel_dp->dpcd) ?
+			     pipe_config->enhanced_framing ?
 			     TRANS_DP_ENH_FRAMING : 0);
 	} else {
 		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
@@ -153,7 +153,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 			intel_dp->DP |= DP_SYNC_VS_HIGH;
 		intel_dp->DP |= DP_LINK_TRAIN_OFF;
 
-		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+		if (pipe_config->enhanced_framing)
 			intel_dp->DP |= DP_ENHANCED_FRAMING;
 
 		if (IS_CHERRYVIEW(dev_priv))
@@ -351,6 +351,9 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 		u32 trans_dp = intel_de_read(dev_priv,
 					     TRANS_DP_CTL(crtc->pipe));
 
+		if (trans_dp & TRANS_DP_ENH_FRAMING)
+			pipe_config->enhanced_framing = true;
+
 		if (trans_dp & TRANS_DP_HSYNC_ACTIVE_HIGH)
 			flags |= DRM_MODE_FLAG_PHSYNC;
 		else
@@ -361,6 +364,9 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 		else
 			flags |= DRM_MODE_FLAG_NVSYNC;
 	} else {
+		if (tmp & DP_ENHANCED_FRAMING)
+			pipe_config->enhanced_framing = true;
+
 		if (tmp & DP_SYNC_HS_HIGH)
 			flags |= DRM_MODE_FLAG_PHSYNC;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 13519f78cf9f..52af64aa9953 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -449,6 +449,8 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	/* FDI must always be 2.7 GHz */
 	pipe_config->port_clock = 135000 * 2;
 
+	pipe_config->enhanced_framing = true;
+
 	adjusted_mode->crtc_clock = lpt_iclkip(pipe_config);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 91242ffe0768..14db2b481ff1 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -257,8 +257,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_m_n_config(pipe_config, "dp m2_n2",
 				      pipe_config->lane_count,
 				      &pipe_config->dp_m2_n2);
-		drm_dbg_kms(&i915->drm, "fec: %s\n",
-			    str_enabled_disabled(pipe_config->fec_enable));
+		drm_dbg_kms(&i915->drm, "fec: %s, enhanced framing: %s\n",
+			    str_enabled_disabled(pipe_config->fec_enable),
+			    str_enabled_disabled(pipe_config->enhanced_framing));
 	}
 
 	drm_dbg_kms(&i915->drm, "framestart delay: %d, MSA timing delay: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4246133950fd..51ae1aad7cc7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3434,7 +3434,7 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
-		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+		if (crtc_state->enhanced_framing)
 			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 	}
 	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
@@ -3491,7 +3491,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
-		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+		if (crtc_state->enhanced_framing)
 			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 	}
 	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
@@ -3725,6 +3725,10 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder,
 					       &pipe_config->dp_m2_n2);
 
+		pipe_config->enhanced_framing =
+			intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, pipe_config)) &
+			DP_TP_CTL_ENHANCED_FRAME_ENABLE;
+
 		if (DISPLAY_VER(dev_priv) >= 11)
 			pipe_config->fec_enable =
 				intel_de_read(dev_priv,
@@ -3741,6 +3745,9 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		if (!HAS_DP20(dev_priv)) {
 			/* FDI */
 			pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);
+			pipe_config->enhanced_framing =
+				intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, pipe_config)) &
+				DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 			break;
 		}
 		fallthrough; /* 128b/132b */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3d3483e6f836..b95eb031abf2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5226,6 +5226,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
 	PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
 	PIPE_CONF_CHECK_BOOL(has_infoframe);
+	PIPE_CONF_CHECK_BOOL(enhanced_framing);
 	PIPE_CONF_CHECK_BOOL(fec_enable);
 
 	PIPE_CONF_CHECK_BOOL_INCOMPLETE(has_audio);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 96a3183675be..9ea96eb19ddd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1338,6 +1338,8 @@ struct intel_crtc_state {
 	u16 linetime;
 	u16 ips_linetime;
 
+	bool enhanced_framing;
+
 	/* Forward Error correction State */
 	bool fec_enable;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e92c62bcc9b8..47a212a84fec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -659,7 +659,7 @@ intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
 	/* Write the link configuration data */
 	link_config[0] = link_bw;
 	link_config[1] = crtc_state->lane_count;
-	if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
+	if (crtc_state->enhanced_framing)
 		link_config[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_BW_SET, link_config, 2);
 
-- 
2.39.2

