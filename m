Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE4F76E95A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 15:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D73B10E612;
	Thu,  3 Aug 2023 13:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9CB210E610
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 13:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691067932; x=1722603932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JXktAvRf3pdagO/Ti4CEl5KfMds4WdpLDTrZLd3yE7o=;
 b=L+tlQ/hkLikSnuJzSUPoUIvGgfJpfx+J+UUEIhpVlvF9nvzbzUpYDrFX
 Cm/bHrFc4D0EGkpRVxvFf9ZoqyQmMy5bAILP7Nrw+I/YEFTL7SuGzcOCz
 Kv+p444iBh/p0F3kZ5sRIGchUsUI1/usfN2mv+wRkcT3AbpnGQ0z48Xpx
 UHkrOC62QxkunkrGSzqYVRnanqJy+Ek1xAuoPrWkn7pVQ/TiPDmgKzFHT
 UrhaCW/PvivsH7PlEXXzcbfFXYqL3m8Jxi2nt51It3JnKsTwZX3CrxQ9J
 Vk2SbdHzX8fS1ti+A8fGLLokUZgSJec+blt/vdHf7iXDVnOORXcdi4YmM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="359906492"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="359906492"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 06:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="843585815"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="843585815"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2023 06:05:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Aug 2023 18:33:35 +0530
Message-Id: <20230803130337.3784597-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230803130337.3784597-1-suraj.kandpal@intel.com>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 5/8] drm/i915/vdsc: Add function to write in
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

--v3
-Use dsc_split instead of num_vdsc_instances [Ankit]

--v5
-Changes to implement the new dsc_reg array variable passing
[Ankit]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 309 +++++-----------------
 1 file changed, 66 insertions(+), 243 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index f283580c2860..93c1658d3a67 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -365,7 +365,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 	return num_vdsc_instances;
 }
 
-static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
+static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
 				  i915_reg_t *dsc_reg)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -388,6 +388,28 @@ static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
 	}
 }
 
+static int intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
+				   int pps, u32 pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	i915_reg_t *dsc_reg;
+	int i, no_vdsc_instances_per_pipe =
+		intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
+
+	dsc_reg = kcalloc(no_vdsc_instances_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
+	if (!dsc_reg)
+		return -ENOMEM;
+
+	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg);
+
+	for (i = 0; i < no_vdsc_instances_per_pipe; i++)
+		intel_de_write(i915, dsc_reg[i], pps_val);
+
+	kfree(dsc_reg);
+	return 0;
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -401,6 +423,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	int i = 0;
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
+	int ret;
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
 	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
@@ -423,149 +446,53 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS0 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS1 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS2 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
-				       pps_val);
-	}
+	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS3 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS4 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS5 not written err:%d\n", ret);
 
 	/* Populate PICTURE_PARAMETER_SET_6 registers */
 	pps_val = 0;
@@ -574,100 +501,36 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS6 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS7 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS8 not written err:%d\n", ret);
 
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
-				       pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS9 not written err:%d\n", ret);
 
 	/* Populate PICTURE_PARAMETER_SET_10 registers */
 	pps_val = 0;
@@ -676,25 +539,9 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS10 not written err:%d\n", ret);
 
 	/* Populate Picture parameter set 16 */
 	pps_val = 0;
@@ -704,51 +551,27 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
-	} else {
-		intel_de_write(dev_priv,
-			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
-				       pps_val);
-	}
+	ret = intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "PPS16 not written err:%d\n", ret);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		/* Populate PICTURE_PARAMETER_SET_17 registers */
 		pps_val = 0;
 		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
 		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
-		intel_de_write(dev_priv,
-			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
-				       pps_val);
+		ret = intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
+		if (ret)
+			drm_dbg_kms(&dev_priv->drm, "PPS17 not written err:%d\n", ret);
 
 		/* Populate PICTURE_PARAMETER_SET_18 registers */
 		pps_val = 0;
 		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
 			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
 		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
-		intel_de_write(dev_priv,
-			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
-			       pps_val);
-		if (no_vdsc_instances_per_pipe > 1)
-			intel_de_write(dev_priv,
-				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
-				       pps_val);
+		ret = intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
+		if (ret)
+			drm_dbg_kms(&dev_priv->drm, "PPS18 not written err:%d\n", ret);
 	}
 
 	/* Populate the RC_BUF_THRESH registers */
-- 
2.25.1

