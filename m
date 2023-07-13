Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C037518CA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 08:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85CD10E179;
	Thu, 13 Jul 2023 06:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEF110E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 06:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689229867; x=1720765867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Fh2X3oGFJwTdg7ReOeGiPDo18aINpEzt7tCXSX9avw=;
 b=Yb7rFjBWOG+MNicI0IRMqXhImx5hpFFNsufUEvP3R8+h6CgPmR+ms8Pf
 XoULKmCLZ8JVcMQMert7eBowgNKkZbMGvEJQJnzF22lZIcbuAOfjjl6Dl
 SfrkeZ4cLYN7nujYnmgpgV7EnKm8GQA7Sd+RoUDZ80jeBUjRfcJ10epzp
 PKMm+mSyQswmV/kpenqccmU9yOLRhlzDI+5ACT7QJRRSIKMXegca01zI3
 o6KuvTtZdqr/gG8PYd9rIwkiTY4erbAvpO/0IwOF1SrieresDr9ZF6dMI
 BwETyJX2v6tP5Tul0+N/qJR2vyMoklsGW2OUfvLltw0VggL8PemcM++5X w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365133766"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="365133766"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 23:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699135367"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="699135367"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 23:31:05 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 11:59:22 +0530
Message-Id: <20230713062924.2894736-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713062924.2894736-1-suraj.kandpal@intel.com>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/vdsc: Add function to write in
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

Now that we have a function that reads any PPS register based
on intel_dsc_pps enum provided lets create a function that can
write on any PPS.

--v2
-Changes need as PPS enum was dropped
-Remove duplicated code in intel_dsc_write_pps_reg [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 274 +++-------------------
 1 file changed, 31 insertions(+), 243 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 48273a3618c5..9d885fce9428 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -303,7 +303,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 	return num_vdsc_instances;
 }
 
-static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
+static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
 				  int dsc_eng_no, i915_reg_t *dsc_reg)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -493,6 +493,22 @@ static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
 	}
 }
 
+static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
+				    int pps, u32 pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
+	i915_reg_t dsc_reg;
+
+	intel_dsc_get_pps_reg(crtc_state, pps, 0, &dsc_reg);
+	intel_de_write(i915, dsc_reg, pps_val);
+	if (num_vdsc_instances > 1) {
+		intel_dsc_get_pps_reg(crtc_state, pps, 2, &dsc_reg);
+		intel_de_write(i915, dsc_reg, pps_val);
+	}
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -527,149 +543,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	if (vdsc_cfg->vbr_enable)
 		pps_val |= DSC_VBR_ENABLE;
 	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_1 registers */
 	pps_val = 0;
 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
 	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_2 registers */
 	pps_val = 0;
 	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
 		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
 	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_3 registers */
 	pps_val = 0;
 	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
 		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
 	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_4 registers */
 	pps_val = 0;
 	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
 		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
 	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_5 registers */
 	pps_val = 0;
 	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
 		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
 	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_6 registers */
 	pps_val = 0;
@@ -678,100 +586,28 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
 		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
 	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_7 registers */
 	pps_val = 0;
 	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
 		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_8 registers */
 	pps_val = 0;
 	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
 		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
 	pps_val = 0;
 	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_10 registers */
 	pps_val = 0;
@@ -780,25 +616,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
 		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
 	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
 
 	/* Populate Picture parameter set 16 */
 	pps_val = 0;
@@ -808,51 +626,21 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
 					vdsc_cfg->slice_height);
 	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
-	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
-		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
-			       pps_val);
-		/*
-		 * If 2 VDSC instances are needed, configure PPS for second
-		 * VDSC
-		 */
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		/* Populate PICTURE_PARAMETER_SET_17 registers */
 		pps_val = 0;
 		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
 		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
-		intel_de_write(dev_priv,
-			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
-				       pps_val);
+		intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
 
 		/* Populate PICTURE_PARAMETER_SET_18 registers */
 		pps_val = 0;
 		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
 			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
 		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
-		intel_de_write(dev_priv,
-			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
-			       pps_val);
-		if (crtc_state->dsc.dsc_split)
-			intel_de_write(dev_priv,
-				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
-				       pps_val);
+		intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
 	}
 
 	/* Populate the RC_BUF_THRESH registers */
-- 
2.25.1

