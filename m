Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CE4756022
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8444610E225;
	Mon, 17 Jul 2023 10:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78A010E224
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588685; x=1721124685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0MDR8F5IjbHrWPPscfDoJhN9fe+couheuWmRnRwjw+0=;
 b=Jm6E0S6wp+CG7PAiVldAYgFzT5S5aeGBGWIQt8Rt5MFY/2ziOAzQbHXd
 9gz77qkWFFqDVUo9Hj85WSFgcgRVjZgwy6n9sMbJ0/Zp4ZtLKTSOnNrrA
 aUBS5vpgQtLH0pRfbPsgCmRkQ+g09/YnM+ONpOHNdfTgLG4VZZY99u/gE
 1kzk1bApzwhuXMgvH/UmG39oY/sD9opZq+/spwJSWUW50XA/4HD0jD9Tl
 jfmPslRrZSVBGR2R1xgcGoc0wKLLgrSbyQt2nFVbOsEhrvM9g7Euqia2l
 weaUx0DzxwLRojdw33QXyoFGVVtTlJLyxE37AjT9FrpSMvjaLqSWB9Oic Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445975"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445975"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832470"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832470"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:23 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:27 +0530
Message-Id: <20230717100931.2989980-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/7] drm/i915/vdsc: Add function to read any
 PPS register
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

Add function to read any PPS register based on the
intel_dsc_pps enum provided. Add a function which will call the
new pps read function and place it in crtc state. Only PPS0 and
PPS1 are readout the rest of the registers will be read in upcoming
patches.

--v2
-Changes in read function as PPS enum is removed
-Initialize pps_val as 0 in pps_read func itself [Jani]
-Create a function that gets the required register and call that
in the common read function [Jani]
-Move the drm_WARN_ON one abstraction layer above [Jani]

--v3
-Send both reg values regardless of dsc engine no [Jani]
-Don't use num_vdsc_instances stick to dsc_split field [Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 221 ++++++++++++++++++----
 1 file changed, 188 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9196329d998d..6d319f351a12 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -303,6 +303,143 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 	return num_vdsc_instances;
 }
 
+static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
+				  i915_reg_t *dsc_reg0, i915_reg_t *dsc_reg1)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	enum pipe pipe = crtc->pipe;
+	bool pipe_dsc;
+
+	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
+
+	switch (pps) {
+	case 0:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_0;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_0;
+		}
+		break;
+	case 1:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_1;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_1;
+		}
+		break;
+	case 2:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_2;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_2;
+		}
+		break;
+	case 3:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_3;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_3;
+		}
+		break;
+	case 4:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_4;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_4;
+		}
+		break;
+	case 5:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_5;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_5;
+		}
+		break;
+	case 6:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_6;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_6;
+		}
+		break;
+	case 7:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_7;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_7;
+		}
+		break;
+	case 8:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_8;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_8;
+		}
+		break;
+	case 9:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_9;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_9;
+		}
+		break;
+	case 10:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_10;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_10;
+		}
+		break;
+	case 16:
+		if (pipe_dsc) {
+			*dsc_reg0 = ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe);
+			*dsc_reg1 = ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe);
+		} else {
+			*dsc_reg0 = DSCA_PICTURE_PARAMETER_SET_16;
+			*dsc_reg1 = DSCC_PICTURE_PARAMETER_SET_16;
+		}
+		break;
+	/*
+	 * Since PPS_17 and PPS_18 were introduced from MTL dsc check
+	 * need not be done
+	 */
+	case 17:
+		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe);
+		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe);
+		break;
+	case 18:
+		*dsc_reg0 = MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe);
+		*dsc_reg1 = MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe);
+		break;
+	default:
+		MISSING_CASE(pps);
+		break;
+	}
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -930,16 +1067,63 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
+static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
+				   int pps, u32 *pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	bool dsc_split = crtc_state->dsc.dsc_split;
+	i915_reg_t dsc_reg0, dsc_reg1;
+	u32 pps_temp;
+
+	*pps_val = 0;
+
+	intel_dsc_get_pps_reg(crtc_state, pps, &dsc_reg0, &dsc_reg1);
+	*pps_val = intel_de_read(i915, dsc_reg0);
+	if (dsc_split) {
+		pps_temp = intel_de_read(i915, dsc_reg1);
+		if (*pps_val != pps_temp)
+			return false;
+	}
+	return true;
+}
+
+static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
+					      int pps, u32 *pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	bool is_dsc_eq;
+
+	is_dsc_eq = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
+	drm_WARN_ON(&i915->drm, !is_dsc_eq);
+}
+
+static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
+{
+	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	u32 pps_temp1, pps_temp2;
+
+	/* Readout PPS_0 and PPS_1 registers */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
+
+	vdsc_cfg->bits_per_pixel = pps_temp2;
+
+	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
+		vdsc_cfg->bits_per_pixel >>= 1;
+
+	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
+}
+
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum pipe pipe = crtc->pipe;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
-	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
+	u32 dss_ctl1, dss_ctl2;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -960,36 +1144,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
 		(dss_ctl1 & JOINER_ENABLE);
 
-	/* FIXME: add more state readout as needed */
-
-	/* PPS0 & PPS1 */
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
-		if (crtc_state->dsc.dsc_split) {
-			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
-			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
-		}
-	} else {
-		pps0 = intel_de_read(dev_priv,
-				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
-		pps1 = intel_de_read(dev_priv,
-				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
-		if (crtc_state->dsc.dsc_split) {
-			pps_temp0 = intel_de_read(dev_priv,
-						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
-			pps_temp1 = intel_de_read(dev_priv,
-						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
-			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
-			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
-		}
-	}
-
-	vdsc_cfg->bits_per_pixel = pps1;
-
-	if (pps0 & DSC_NATIVE_420_ENABLE)
-		vdsc_cfg->bits_per_pixel >>= 1;
-
-	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
+	intel_dsc_get_pps_config(crtc_state);
 out:
 	intel_display_power_put(dev_priv, power_domain, wakeref);
 }
-- 
2.25.1

