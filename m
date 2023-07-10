Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9B074D300
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 12:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC1F10E25B;
	Mon, 10 Jul 2023 10:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0D810E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 10:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688983858; x=1720519858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/qrh0Jf1sFpAnO6y/u1dRgOeiORPFT0Zj+f9JWq7404=;
 b=Lf2JURV/n/X/32m2C4G8SsQmh8HXDXQUb90gMtO/6X+nO/70fvpVposC
 rKw2Voc7NG5E45drDbAd8Kj0Q9CtBpSy5i7LTQuOFL8ni5Gs7HgU6EQsB
 73yBTB+fPK3LJtrO7thKJLZUi8+BQaV+L0ctSNCirrRiDVjPknqEwpOml
 T2Dy/039nKTHwLRiuttqW3Msj3JCtWACjYEzz6MpnlMBMrPRHOFi2c1vu
 JE0wUqd7G6RsZqWMoZz29UQGT+PJKXrhNjRWO/+LlxUo6irZHCUqUnmbI
 697n/CxPfPb1ptD85PdfR8PcndjsPqB6IxviV204Iuv+UMKg+t2fTBMXU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343897115"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343897115"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 03:10:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723955081"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723955081"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 03:10:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 15:39:08 +0530
Message-Id: <20230710100911.2736389-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230710100911.2736389-1-suraj.kandpal@intel.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/vdsc: Add function to read any PPS
 register
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 293 ++++++++++++++++++++--
 1 file changed, 272 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 1a8272324c36..53eac8d9c80f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -940,16 +940,284 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
+static void intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
+				   enum intel_dsc_pps pps, u32 *pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 pps_temp;
+
+	switch (pps) {
+	case PPS_0:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_0);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_0);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_1:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_1);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_1);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_2:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_2);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_2);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_3:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_3);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_3);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_4:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_4);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_4);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_5:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_5);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_5);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_6:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_6);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_6);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_7:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_7);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_7);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_8:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_8);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_8);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_9:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_9);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_9);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_10:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_10);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_10);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	case PPS_16:
+		if (!is_pipe_dsc(crtc, cpu_transcoder)) {
+			*pps_val = intel_de_read(i915, DSCA_PICTURE_PARAMETER_SET_16);
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp = intel_de_read(i915, DSCC_PICTURE_PARAMETER_SET_16);
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		} else {
+			*pps_val = intel_de_read(i915,
+						 ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe));
+			if (crtc_state->dsc.dsc_split) {
+				pps_temp =
+					intel_de_read(i915,
+						      ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe));
+				drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+			}
+		}
+		break;
+	/* Since PPS_17 and PPS_18 were introduced from MTL dsc check need not be done */
+	case PPS_17:
+		*pps_val = intel_de_read(i915,
+					 MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe));
+		if (crtc_state->dsc.dsc_split) {
+			pps_temp =
+				intel_de_read(i915,
+					      MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe));
+			drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+		}
+		break;
+	case PPS_18:
+		*pps_val = intel_de_read(i915,
+					 MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe));
+		if (crtc_state->dsc.dsc_split) {
+			pps_temp =
+				intel_de_read(i915,
+					      MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe));
+			drm_WARN_ON(&i915->drm, *pps_val != pps_temp);
+		}
+		break;
+	default:
+		drm_err(&i915->drm, "PPS register does not exist\n");
+		break;
+	}
+}
+
+static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
+{
+	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	u32 pps_temp1, pps_temp2;
+
+	/* Readout PPS_0 and PPS_1 registers */
+	intel_dsc_read_pps_reg(crtc_state, PPS_0, &pps_temp1);
+	intel_dsc_read_pps_reg(crtc_state, PPS_1, &pps_temp2);
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
-	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
+	u32 dss_ctl1, dss_ctl2;
 
 	if (!intel_dsc_source_support(crtc_state))
 		return;
@@ -970,24 +1238,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
 		(dss_ctl1 & JOINER_ENABLE);
 
-	/* FIXME: add more state readout as needed */
-
-	/* PPS0 & PPS1 */
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
-	} else {
-		pps0 = intel_de_read(dev_priv,
-				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
-		pps1 = intel_de_read(dev_priv,
-				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
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

