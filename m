Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C5D49F76B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E6EC10EE7D;
	Fri, 28 Jan 2022 10:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF29210EE00
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366295; x=1674902295;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ux0gJcH3b80V6z4/veBwbKoYnIZhbVV1EDRYsJieBXA=;
 b=ZE2ZEgUa6xaBagbkX/mUrfj9ksUrLbqqTV5+rNTPLYPekFX5FNR/Vru/
 9il0H1gIIhRN3vmvdh58+Dpmg9y7IJuPoWF7t9/zX/hXD8jSyJjiINaML
 ShRNKqH8M8/6QdxYMQ7IQy2v7KcaI7qn+1/NwNHEejX5nxWNMKi5KcU45
 9lU0gQbgR0S+lmsj3HfGTaWwEW34Bf59jpPGniMjVs34XhlX7PPB81SwS
 St6DQCryAnCCEA0jZyCHlNzNfy6Pl9JqIgwiQYbLgyOGoVh7DTV0zeq9r
 fGFlivXnFlSFIqjN5Z5MhLDtqfsRc4fKI/zSD7qEgqe0UItCPtLU/uief g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="247044259"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="247044259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="675059470"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 28 Jan 2022 02:38:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:45 +0200
Message-Id: <20220128103757.22461-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/17] drm/i915: Split
 intel_cpu_transcoder_get_m_n() into M1/N1 vs. M2/N2 variants
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

As with intel_cpu_transcoder_set_m_n() let's split the readout
counterpart into explicit M1/N1 vs. M2/N2 variants as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 12 ++++---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 12 +++----
 drivers/gpu/drm/i915/display/intel_display.c  | 32 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  | 10 +++---
 .../gpu/drm/i915/display/intel_pch_display.c  |  8 ++---
 5 files changed, 42 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 771bff714772..07432f6b56ac 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -337,12 +337,14 @@ static void g4x_dp_get_m_n(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (crtc_state->has_pch_encoder)
+	if (crtc_state->has_pch_encoder) {
 		intel_pch_transcoder_get_m_n(crtc, &crtc_state->dp_m_n);
-	else
-		intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
-					     &crtc_state->dp_m_n,
-					     &crtc_state->dp_m2_n2);
+	} else {
+		intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
+					       &crtc_state->dp_m_n);
+		intel_cpu_transcoder_get_m2_n2(crtc, crtc_state->cpu_transcoder,
+					       &crtc_state->dp_m2_n2);
+	}
 }
 
 static void intel_dp_get_config(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dead4b72719f..b02b327331f8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3362,9 +3362,10 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 		pipe_config->lane_count =
 			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
 
-		intel_cpu_transcoder_get_m_n(crtc, cpu_transcoder,
-					     &pipe_config->dp_m_n,
-					     &pipe_config->dp_m2_n2);
+		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
+					       &pipe_config->dp_m_n);
+		intel_cpu_transcoder_get_m2_n2(crtc, cpu_transcoder,
+					       &pipe_config->dp_m2_n2);
 
 		if (DISPLAY_VER(dev_priv) >= 11) {
 			i915_reg_t dp_tp_ctl = dp_tp_ctl_reg(encoder, pipe_config);
@@ -3401,9 +3402,8 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 			pipe_config->mst_master_transcoder =
 					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
 
-		intel_cpu_transcoder_get_m_n(crtc, cpu_transcoder,
-					     &pipe_config->dp_m_n,
-					     &pipe_config->dp_m2_n2);
+		intel_cpu_transcoder_get_m1_n1(crtc, cpu_transcoder,
+					       &pipe_config->dp_m_n);
 
 		pipe_config->infoframes.enable |=
 			intel_hdmi_infoframes_enabled(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 13355e8778f8..79f22a3f2e20 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3877,29 +3877,35 @@ void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
-void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
-				  enum transcoder transcoder,
-				  struct intel_link_m_n *m_n,
-				  struct intel_link_m_n *m2_n2)
+void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder transcoder,
+				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
-
-		if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
-			intel_get_m_n(dev_priv, m2_n2,
-				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
-				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
-		}
-	} else {
+	else
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
 			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
-	}
+}
+
+void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder transcoder,
+				    struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (!transcoder_has_m2_n2(dev_priv, transcoder))
+		return;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 }
 
 static void ilk_get_pfit_pos_size(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 036e28581019..9a232bdef0f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -608,10 +608,12 @@ void intel_cpu_transcoder_set_m1_n1(const struct intel_crtc_state *crtc_state,
 				    const struct intel_link_m_n *m_n);
 void intel_cpu_transcoder_set_m2_n2(const struct intel_crtc_state *crtc_state,
 				    const struct intel_link_m_n *m_n);
-void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
-				  enum transcoder cpu_transcoder,
-				  struct intel_link_m_n *m_n,
-				  struct intel_link_m_n *m2_n2);
+void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n);
+void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    enum transcoder cpu_transcoder,
+				    struct intel_link_m_n *m_n);
 void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 				  struct intel_link_m_n *m_n);
 void i9xx_crtc_clock_get(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index b464633b551b..dd010be534a2 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -386,8 +386,8 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
-				     &crtc_state->fdi_m_n, NULL);
+	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
+				       &crtc_state->fdi_m_n);
 
 	if (HAS_PCH_IBX(dev_priv)) {
 		/*
@@ -510,8 +510,8 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
-	intel_cpu_transcoder_get_m_n(crtc, crtc_state->cpu_transcoder,
-				     &crtc_state->fdi_m_n, NULL);
+	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
+				       &crtc_state->fdi_m_n);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
-- 
2.34.1

