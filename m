Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 542FF792C47
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B092A10E286;
	Tue,  5 Sep 2023 17:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D66110E21B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693934213; x=1725470213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zqOSelyvph/9PH/NrsdQzmIlI7ZMYcbk2ydnKHmuGTk=;
 b=O3tNNJUK+b3kZ+K73OT8CoGKhEycMAMq9A6SvbKK8P7Yyd/uM3I8xFtJ
 2mW3r0FvGV8nZ0zelrRDlPT8TqjEWFsy8QjC4jPoCT3dXbZmDLAsCEsOo
 AloKxYqNLAKvIAemH/3TOnHrPYtojaNf+9dukd7IozEE6bGchHtvAouwA
 IlyeGn+r3qx0RSMTIZDEQTiMkH248SVrmshsiuAlV7siZZscexwdOOlFm
 5IOJjyvjbG2i1I71BD8sY6Le/haPLzNyCxlqN7LoErMPunsz+NsBRk4y1
 zLxDgxj+OA2kkxnD9jhjwXhSnDuRN5KnEXeNAuuGuCfiMwckKgA63H7BO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407846554"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="407846554"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:14:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744343848"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="744343848"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:23 +0300
Message-Id: <e793056e610ee8cfe2a8d69605402cd2445a517a.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/dsc: rename pps write to
 intel_dsc_pps_write()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make the function name conform to existing style better.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b0be6615a865..4086dbb25ca5 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -389,8 +389,8 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
 		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS(pipe, pps) : DSCA_PPS(pps);
 }
 
-static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
-				    int pps, u32 pps_val)
+static void intel_dsc_pps_write(const struct intel_crtc_state *crtc_state,
+				int pps, u32 pps_val)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -443,41 +443,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	if (vdsc_cfg->vbr_enable)
 		pps_val |= DSC_VBR_ENABLE;
 	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
+	intel_dsc_pps_write(crtc_state, 0, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_1 registers */
 	pps_val = 0;
 	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
 	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
+	intel_dsc_pps_write(crtc_state, 1, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_2 registers */
 	pps_val = 0;
 	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
 		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
 	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
+	intel_dsc_pps_write(crtc_state, 2, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_3 registers */
 	pps_val = 0;
 	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
 		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
 	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
+	intel_dsc_pps_write(crtc_state, 3, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_4 registers */
 	pps_val = 0;
 	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
 		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
 	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
+	intel_dsc_pps_write(crtc_state, 4, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_5 registers */
 	pps_val = 0;
 	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
 		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
 	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
+	intel_dsc_pps_write(crtc_state, 5, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_6 registers */
 	pps_val = 0;
@@ -486,28 +486,28 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
 		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
 	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
+	intel_dsc_pps_write(crtc_state, 6, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_7 registers */
 	pps_val = 0;
 	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
 		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
+	intel_dsc_pps_write(crtc_state, 7, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_8 registers */
 	pps_val = 0;
 	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
 		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
+	intel_dsc_pps_write(crtc_state, 8, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
 	pps_val = 0;
 	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
+	intel_dsc_pps_write(crtc_state, 9, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_10 registers */
 	pps_val = 0;
@@ -516,7 +516,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
 		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
 	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
+	intel_dsc_pps_write(crtc_state, 10, pps_val);
 
 	/* Populate Picture parameter set 16 */
 	pps_val = 0;
@@ -526,21 +526,21 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
 					vdsc_cfg->slice_height);
 	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
-	intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
+	intel_dsc_pps_write(crtc_state, 16, pps_val);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		/* Populate PICTURE_PARAMETER_SET_17 registers */
 		pps_val = 0;
 		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
 		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
-		intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
+		intel_dsc_pps_write(crtc_state, 17, pps_val);
 
 		/* Populate PICTURE_PARAMETER_SET_18 registers */
 		pps_val = 0;
 		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
 			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
 		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
-		intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
+		intel_dsc_pps_write(crtc_state, 18, pps_val);
 	}
 
 	/* Populate the RC_BUF_THRESH registers */
-- 
2.39.2

