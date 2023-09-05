Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EB6792C3C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB2410E0FA;
	Tue,  5 Sep 2023 17:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A80510E0FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693933918; x=1725469918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VwnaZ6VLQ/nBsCDrHXZpPzn0hwOU7ncuJN0+CcXn1vg=;
 b=jjEaB94fnUfExAlRUNiAUJo/XBqQ3fj7keA25mYjmsHkcf9Dhd9nKU71
 /PQI5SW/KMlTv8I2zNpqpUFDHP5vIfY4PuS8K/fYWeyWUHV1sfKCHT3C9
 LrqZEE9m3bN5ZpDsFHfQIA8ZPYvuI5dDIuUfAAlxuZGkj23LMQjFLNLM8
 DYRwFuWrbPix0xme7rjiV/ZAEzXLCXfPDt1PNB5kLgzWhOgLtMjlyQ0nw
 skx2KPSc56+Qv2PVHW0YMmQXdLMtjiqVJ48koPk7KQSdUzjvYVj3F0KLf
 D6pmyjzsjZ5UAgshjjrHvCiknl+bxc2vTd8Mw8LTNudcqb1OAP/e0qOIN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="356342097"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="356342097"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="741160809"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="741160809"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:24 +0300
Message-Id: <d752a148cc84558b76c8c3dacd9c0b2e0a4efd91.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/dsc: drop redundant = 0 assignments
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

Directly assign the values instead of first assigning 0 and then |= the
values.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 43 ++++++++---------------
 1 file changed, 15 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 4086dbb25ca5..73bfa4d6633d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -415,7 +415,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum pipe pipe = crtc->pipe;
-	u32 pps_val = 0;
+	u32 pps_val;
 	u32 rc_buf_thresh_dword[4];
 	u32 rc_range_params_dword[8];
 	int i = 0;
@@ -446,42 +446,36 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	intel_dsc_pps_write(crtc_state, 0, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_1 registers */
-	pps_val = 0;
-	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
+	pps_val = DSC_BPP(vdsc_cfg->bits_per_pixel);
 	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 1, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_2 registers */
-	pps_val = 0;
-	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
+	pps_val = DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
 		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
 	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 2, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_3 registers */
-	pps_val = 0;
-	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
+	pps_val = DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
 		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
 	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 3, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_4 registers */
-	pps_val = 0;
-	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
+	pps_val = DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
 		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
 	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 4, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_5 registers */
-	pps_val = 0;
-	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
+	pps_val = DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
 		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
 	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 5, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_6 registers */
-	pps_val = 0;
-	pps_val |= DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
+	pps_val = DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
 		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset) |
 		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
 		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
@@ -489,29 +483,25 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	intel_dsc_pps_write(crtc_state, 6, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_7 registers */
-	pps_val = 0;
-	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
+	pps_val = DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
 		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 7, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_8 registers */
-	pps_val = 0;
-	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
+	pps_val = DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
 		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
 	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 8, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_9 registers */
-	pps_val = 0;
-	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
+	pps_val = DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
 		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
 	intel_dsc_pps_write(crtc_state, 9, pps_val);
 
 	/* Populate PICTURE_PARAMETER_SET_10 registers */
-	pps_val = 0;
-	pps_val |= DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg->rc_quant_incr_limit0) |
+	pps_val = DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg->rc_quant_incr_limit0) |
 		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
 		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
 		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
@@ -519,8 +509,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	intel_dsc_pps_write(crtc_state, 10, pps_val);
 
 	/* Populate Picture parameter set 16 */
-	pps_val = 0;
-	pps_val |= DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
+	pps_val = DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
 		DSC_SLICE_PER_LINE((vdsc_cfg->pic_width / num_vdsc_instances) /
 				   vdsc_cfg->slice_width) |
 		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
@@ -530,15 +519,13 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		/* Populate PICTURE_PARAMETER_SET_17 registers */
-		pps_val = 0;
-		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
+		pps_val = DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
 		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
 		intel_dsc_pps_write(crtc_state, 17, pps_val);
 
 		/* Populate PICTURE_PARAMETER_SET_18 registers */
-		pps_val = 0;
-		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
-			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
+		pps_val = DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
+			DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
 		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
 		intel_dsc_pps_write(crtc_state, 18, pps_val);
 	}
-- 
2.39.2

