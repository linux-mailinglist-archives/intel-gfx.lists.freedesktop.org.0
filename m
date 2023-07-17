Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F8756026
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B66510E22B;
	Mon, 17 Jul 2023 10:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DCB110E228
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588690; x=1721124690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4j0r6e2Obc7TcG+yYWH8v2jU55JPFHcOkWZgAjp3Z8w=;
 b=nldvy0B1U7syzugwy0b+f7C1quv3ojAFZZ93neNr6Xfr72UDbA8wmPbk
 DXlz5ZToP7RA2pieBZwS4Jw2JDbh7HqSjSbkEeGyWYms5yI9zSCEdcNCe
 c3lrs/f3mMSF9eB596nia2y1XcK5fgeO09Gk/c7hP4y+LP2TYuZ1+hjcY
 bQH/geQSr5WhMwSKCgGNpwV7BvgBz/M7YPv3+Fa+/fATdcpCEWJBjx82N
 6B0tFuWNhvh9/IV2KKpOC12tbtjw+E8i+iY0kMOvagAktCAaC9D7s466M
 BgmX101CiUjZV4XE7EkqMa4cIUFRXPzwWWCDt3755/9l2WpPg01EnQCpM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445993"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445993"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832486"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832486"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:29 +0530
Message-Id: <20230717100931.2989980-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915/vdsc: Add function to write in
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 272 +++-------------------
 1 file changed, 29 insertions(+), 243 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index ed8fda431226..2f0362241059 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -303,7 +303,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 	return num_vdsc_instances;
 }
 
-static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
+static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
 				  i915_reg_t *dsc_reg0, i915_reg_t *dsc_reg1)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -380,6 +380,20 @@ static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
 #undef MTL_GET_DSC_REGISTER
 }
 
+static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
+				    int pps, u32 pps_val)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	i915_reg_t dsc_reg0, dsc_reg1;
+
+	intel_dsc_get_pps_reg(crtc_state, pps, &dsc_reg0, &dsc_reg1);
+	intel_de_write(i915, dsc_reg0, pps_val);
+	if (crtc_state->dsc.dsc_split) {
+		intel_de_write(i915, dsc_reg1, pps_val);
+	}
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -414,149 +428,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
@@ -565,100 +471,28 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
@@ -667,25 +501,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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
@@ -695,51 +511,21 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
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

