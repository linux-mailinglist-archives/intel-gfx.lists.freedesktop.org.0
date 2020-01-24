Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D672148617
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:27:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D081572A93;
	Fri, 24 Jan 2020 13:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB0F72A93
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:27:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="292424347"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:27:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:51 +0200
Message-Id: <735389bfa1f9c4be8080f3187ea1dbde308d1ce2.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 30/33] drm/i915/vdsc: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 413 +++++++++++++---------
 1 file changed, 249 insertions(+), 164 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9e6aaa302e40..a81abadb067f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -520,18 +520,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		pps_val |= DSC_VBR_ENABLE;
 	DRM_INFO("PPS0 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_0, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_0, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_1 registers */
@@ -539,18 +544,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
 	DRM_INFO("PPS1 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_1, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_1, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_2 registers */
@@ -559,18 +569,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
 	DRM_INFO("PPS2 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_2, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_2, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_3 registers */
@@ -579,18 +594,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
 	DRM_INFO("PPS3 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_3, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_3, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_4 registers */
@@ -599,18 +619,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
 	DRM_INFO("PPS4 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_4, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_4, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_5 registers */
@@ -619,18 +644,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
 	DRM_INFO("PPS5 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_5, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_5, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_6 registers */
@@ -641,18 +671,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
 	DRM_INFO("PPS6 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_6, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_6, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_7 registers */
@@ -661,18 +696,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
 	DRM_INFO("PPS7 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_7, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_7, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_8 registers */
@@ -681,18 +721,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
 	DRM_INFO("PPS8 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_8, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_8, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
@@ -701,18 +746,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 	DRM_INFO("PPS9 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_9, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_9, pps_val);
+			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
+				       pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
+				       pps_val);
 	}
 
 	/* Populate PICTURE_PARAMETER_SET_10 registers */
@@ -723,18 +773,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
 	DRM_INFO("PPS10 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_10, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_10, pps_val);
+			intel_de_write(dev_priv,
+				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
+				       pps_val);
 	}
 
 	/* Populate Picture parameter set 16 */
@@ -746,18 +801,23 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 					vdsc_cfg->slice_height);
 	DRM_INFO("PPS16 = 0x%08x\n", pps_val);
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_PICTURE_PARAMETER_SET_16, pps_val);
+		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
+			       pps_val);
 		/*
 		 * If 2 VDSC instances are needed, configure PPS for second
 		 * VDSC
 		 */
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(DSCC_PICTURE_PARAMETER_SET_16, pps_val);
+			intel_de_write(dev_priv,
+				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
 	} else {
-		I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe), pps_val);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
+			       pps_val);
 		if (crtc_state->dsc.dsc_split)
-			I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
-				   pps_val);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
+				       pps_val);
 	}
 
 	/* Populate the RC_BUF_THRESH registers */
@@ -770,38 +830,46 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 			 rc_buf_thresh_dword[i / 4]);
 	}
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_RC_BUF_THRESH_0, rc_buf_thresh_dword[0]);
-		I915_WRITE(DSCA_RC_BUF_THRESH_0_UDW, rc_buf_thresh_dword[1]);
-		I915_WRITE(DSCA_RC_BUF_THRESH_1, rc_buf_thresh_dword[2]);
-		I915_WRITE(DSCA_RC_BUF_THRESH_1_UDW, rc_buf_thresh_dword[3]);
+		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
+			       rc_buf_thresh_dword[0]);
+		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
+			       rc_buf_thresh_dword[1]);
+		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1,
+			       rc_buf_thresh_dword[2]);
+		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
+			       rc_buf_thresh_dword[3]);
 		if (crtc_state->dsc.dsc_split) {
-			I915_WRITE(DSCC_RC_BUF_THRESH_0,
-				   rc_buf_thresh_dword[0]);
-			I915_WRITE(DSCC_RC_BUF_THRESH_0_UDW,
-				   rc_buf_thresh_dword[1]);
-			I915_WRITE(DSCC_RC_BUF_THRESH_1,
-				   rc_buf_thresh_dword[2]);
-			I915_WRITE(DSCC_RC_BUF_THRESH_1_UDW,
-				   rc_buf_thresh_dword[3]);
+			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
+				       rc_buf_thresh_dword[0]);
+			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0_UDW,
+				       rc_buf_thresh_dword[1]);
+			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_1,
+				       rc_buf_thresh_dword[2]);
+			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_1_UDW,
+				       rc_buf_thresh_dword[3]);
 		}
 	} else {
-		I915_WRITE(ICL_DSC0_RC_BUF_THRESH_0(pipe),
-			   rc_buf_thresh_dword[0]);
-		I915_WRITE(ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
-			   rc_buf_thresh_dword[1]);
-		I915_WRITE(ICL_DSC0_RC_BUF_THRESH_1(pipe),
-			   rc_buf_thresh_dword[2]);
-		I915_WRITE(ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
-			   rc_buf_thresh_dword[3]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_0(pipe),
+			       rc_buf_thresh_dword[0]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
+			       rc_buf_thresh_dword[1]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1(pipe),
+			       rc_buf_thresh_dword[2]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
+			       rc_buf_thresh_dword[3]);
 		if (crtc_state->dsc.dsc_split) {
-			I915_WRITE(ICL_DSC1_RC_BUF_THRESH_0(pipe),
-				   rc_buf_thresh_dword[0]);
-			I915_WRITE(ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe),
-				   rc_buf_thresh_dword[1]);
-			I915_WRITE(ICL_DSC1_RC_BUF_THRESH_1(pipe),
-				   rc_buf_thresh_dword[2]);
-			I915_WRITE(ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe),
-				   rc_buf_thresh_dword[3]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_BUF_THRESH_0(pipe),
+				       rc_buf_thresh_dword[0]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe),
+				       rc_buf_thresh_dword[1]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_BUF_THRESH_1(pipe),
+				       rc_buf_thresh_dword[2]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe),
+				       rc_buf_thresh_dword[3]);
 		}
 	}
 
@@ -819,74 +887,90 @@ static void intel_dsc_pps_configure(struct intel_encoder *encoder,
 			 rc_range_params_dword[i / 2]);
 	}
 	if (!is_pipe_dsc(crtc_state)) {
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0,
-			   rc_range_params_dword[0]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0_UDW,
-			   rc_range_params_dword[1]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_1,
-			   rc_range_params_dword[2]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_1_UDW,
-			   rc_range_params_dword[3]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_2,
-			   rc_range_params_dword[4]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_2_UDW,
-			   rc_range_params_dword[5]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_3,
-			   rc_range_params_dword[6]);
-		I915_WRITE(DSCA_RC_RANGE_PARAMETERS_3_UDW,
-			   rc_range_params_dword[7]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
+			       rc_range_params_dword[0]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0_UDW,
+			       rc_range_params_dword[1]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_1,
+			       rc_range_params_dword[2]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_1_UDW,
+			       rc_range_params_dword[3]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_2,
+			       rc_range_params_dword[4]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_2_UDW,
+			       rc_range_params_dword[5]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3,
+			       rc_range_params_dword[6]);
+		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3_UDW,
+			       rc_range_params_dword[7]);
 		if (crtc_state->dsc.dsc_split) {
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_0,
-				   rc_range_params_dword[0]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_0_UDW,
-				   rc_range_params_dword[1]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_1,
-				   rc_range_params_dword[2]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_1_UDW,
-				   rc_range_params_dword[3]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_2,
-				   rc_range_params_dword[4]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_2_UDW,
-				   rc_range_params_dword[5]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_3,
-				   rc_range_params_dword[6]);
-			I915_WRITE(DSCC_RC_RANGE_PARAMETERS_3_UDW,
-				   rc_range_params_dword[7]);
+			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_0,
+				       rc_range_params_dword[0]);
+			intel_de_write(dev_priv,
+				       DSCC_RC_RANGE_PARAMETERS_0_UDW,
+				       rc_range_params_dword[1]);
+			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_1,
+				       rc_range_params_dword[2]);
+			intel_de_write(dev_priv,
+				       DSCC_RC_RANGE_PARAMETERS_1_UDW,
+				       rc_range_params_dword[3]);
+			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_2,
+				       rc_range_params_dword[4]);
+			intel_de_write(dev_priv,
+				       DSCC_RC_RANGE_PARAMETERS_2_UDW,
+				       rc_range_params_dword[5]);
+			intel_de_write(dev_priv, DSCC_RC_RANGE_PARAMETERS_3,
+				       rc_range_params_dword[6]);
+			intel_de_write(dev_priv,
+				       DSCC_RC_RANGE_PARAMETERS_3_UDW,
+				       rc_range_params_dword[7]);
 		}
 	} else {
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
-			   rc_range_params_dword[0]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
-			   rc_range_params_dword[1]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
-			   rc_range_params_dword[2]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
-			   rc_range_params_dword[3]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
-			   rc_range_params_dword[4]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
-			   rc_range_params_dword[5]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
-			   rc_range_params_dword[6]);
-		I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
-			   rc_range_params_dword[7]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
+			       rc_range_params_dword[0]);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
+			       rc_range_params_dword[1]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
+			       rc_range_params_dword[2]);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
+			       rc_range_params_dword[3]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
+			       rc_range_params_dword[4]);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
+			       rc_range_params_dword[5]);
+		intel_de_write(dev_priv, ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
+			       rc_range_params_dword[6]);
+		intel_de_write(dev_priv,
+			       ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
+			       rc_range_params_dword[7]);
 		if (crtc_state->dsc.dsc_split) {
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
-				   rc_range_params_dword[0]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
-				   rc_range_params_dword[1]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
-				   rc_range_params_dword[2]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
-				   rc_range_params_dword[3]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
-				   rc_range_params_dword[4]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
-				   rc_range_params_dword[5]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
-				   rc_range_params_dword[6]);
-			I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
-				   rc_range_params_dword[7]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
+				       rc_range_params_dword[0]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
+				       rc_range_params_dword[1]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
+				       rc_range_params_dword[2]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
+				       rc_range_params_dword[3]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
+				       rc_range_params_dword[4]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
+				       rc_range_params_dword[5]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
+				       rc_range_params_dword[6]);
+			intel_de_write(dev_priv,
+				       ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
+				       rc_range_params_dword[7]);
 		}
 	}
 }
@@ -912,11 +996,11 @@ void intel_dsc_get_config(struct intel_encoder *encoder,
 		return;
 
 	if (!is_pipe_dsc(crtc_state)) {
-		dss_ctl1 = I915_READ(DSS_CTL1);
-		dss_ctl2 = I915_READ(DSS_CTL2);
+		dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
+		dss_ctl2 = intel_de_read(dev_priv, DSS_CTL2);
 	} else {
-		dss_ctl1 = I915_READ(ICL_PIPE_DSS_CTL1(pipe));
-		dss_ctl2 = I915_READ(ICL_PIPE_DSS_CTL2(pipe));
+		dss_ctl1 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+		dss_ctl2 = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL2(pipe));
 	}
 
 	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
@@ -930,9 +1014,10 @@ void intel_dsc_get_config(struct intel_encoder *encoder,
 
 	/* PPS1 */
 	if (!is_pipe_dsc(crtc_state))
-		val = I915_READ(DSCA_PICTURE_PARAMETER_SET_1);
+		val = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
 	else
-		val = I915_READ(ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
+		val = intel_de_read(dev_priv,
+				    ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
 	vdsc_cfg->bits_per_pixel = val;
 	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
 out:
@@ -1013,8 +1098,8 @@ void intel_dsc_enable(struct intel_encoder *encoder,
 		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
-	I915_WRITE(dss_ctl1_reg, dss_ctl1_val);
-	I915_WRITE(dss_ctl2_reg, dss_ctl2_val);
+	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1_val);
+	intel_de_write(dev_priv, dss_ctl2_reg, dss_ctl2_val);
 }
 
 void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
@@ -1035,17 +1120,17 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(pipe);
 		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(pipe);
 	}
-	dss_ctl1_val = I915_READ(dss_ctl1_reg);
+	dss_ctl1_val = intel_de_read(dev_priv, dss_ctl1_reg);
 	if (dss_ctl1_val & JOINER_ENABLE)
 		dss_ctl1_val &= ~JOINER_ENABLE;
-	I915_WRITE(dss_ctl1_reg, dss_ctl1_val);
+	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1_val);
 
-	dss_ctl2_val = I915_READ(dss_ctl2_reg);
+	dss_ctl2_val = intel_de_read(dev_priv, dss_ctl2_reg);
 	if (dss_ctl2_val & LEFT_BRANCH_VDSC_ENABLE ||
 	    dss_ctl2_val & RIGHT_BRANCH_VDSC_ENABLE)
 		dss_ctl2_val &= ~(LEFT_BRANCH_VDSC_ENABLE |
 				  RIGHT_BRANCH_VDSC_ENABLE);
-	I915_WRITE(dss_ctl2_reg, dss_ctl2_val);
+	intel_de_write(dev_priv, dss_ctl2_reg, dss_ctl2_val);
 
 	/* Disable Power wells for VDSC/joining */
 	intel_display_power_put_unchecked(dev_priv,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
