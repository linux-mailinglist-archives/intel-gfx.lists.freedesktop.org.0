Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C26792C45
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2A510E17A;
	Tue,  5 Sep 2023 17:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57C910E21B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693934209; x=1725470209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+gSvgrxwZjk/9mdFMkXlojvQJ0f2S6JT7VL8Upx3NnA=;
 b=jd5RweYT8naRBuk9YcCiV+2XSw/seqBjLF+iQPkLZVLjzNchEaQUzPN3
 4AnSv5MfmiO6qeznePsZ0o/1b4aNSvhRZP9K9hQDLDwyEPQ23WJPAJO2V
 ewWkrEkQEUwfuccn7CqDhZC1ihyJMTw57ZUj8u/aBSnY0JsCg8RqH89t/
 lGeuhKojR76qgcZG74QsT+bLdJppczAfK73w5Nx1spIVSzldbaQAA80bU
 tN4r/vzNQrZEidlBWXe2b7jdTuiPHa0/+6hbq0wlepfxiAO4WP1EUCERH
 oLqE1ausobULgJ2xIOdmaVhJcogedArcAimNqRpWRU7WcHGJqntfGoKlT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407846518"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="407846518"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:14:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744343738"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="744343738"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:21 +0300
Message-Id: <89b7d70bb19114ab3ff0e150a4b862d8032f136d.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/dsc: have
 intel_dsc_pps_read_and_verify() return the value
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

Register read functions usually return the value instead of passing via
pointer parameters. The calling code becomes easier to read.

Make the name conform to existing style better while at it.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 36 ++++++++++++-----------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 14317bb6d3df..abb2c4370231 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -840,15 +840,17 @@ static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
 	return true;
 }
 
-static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
-					      int pps, u32 *pps_val)
+static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_state, int pps)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 val;
 	int ret;
 
-	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
+	ret = intel_dsc_read_pps_reg(crtc_state, pps, &val);
 	drm_WARN_ON(&i915->drm, !ret);
+
+	return val;
 }
 
 static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
@@ -860,7 +862,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	u32 pps_temp;
 
 	/* PPS_0 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 0);
 
 	vdsc_cfg->bits_per_component = (pps_temp & DSC_BPC_MASK) >> DSC_BPC_SHIFT;
 	vdsc_cfg->line_buf_depth =
@@ -873,7 +875,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	vdsc_cfg->vbr_enable = pps_temp & DSC_VBR_ENABLE;
 
 	/* PPS_1 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 1);
 
 	vdsc_cfg->bits_per_pixel = pps_temp;
 
@@ -883,31 +885,31 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
 
 	/* PPS_2 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 2);
 
 	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp) / num_vdsc_instances;
 	vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PIC_HEIGHT_MASK, pps_temp);
 
 	/* PPS_3 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 3, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 3);
 
 	vdsc_cfg->slice_width = REG_FIELD_GET(DSC_SLICE_WIDTH_MASK, pps_temp);
 	vdsc_cfg->slice_height = REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK, pps_temp);
 
 	/* PPS_4 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 4, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 4);
 
 	vdsc_cfg->initial_dec_delay = REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
 	vdsc_cfg->initial_xmit_delay = REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
 
 	/* PPS_5 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 5, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 5);
 
 	vdsc_cfg->scale_decrement_interval = REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
 	vdsc_cfg->scale_increment_interval = REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
 
 	/* PPS_6 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 6, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 6);
 
 	vdsc_cfg->initial_scale_value = REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp);
 	vdsc_cfg->first_line_bpg_offset = REG_FIELD_GET(DSC_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
@@ -915,41 +917,41 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	vdsc_cfg->flatness_max_qp = REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
 
 	/* PPS_7 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 7, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 7);
 
 	vdsc_cfg->nfl_bpg_offset = REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
 	vdsc_cfg->slice_bpg_offset = REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
 
 	/* PPS_8 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 8, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 8);
 
 	vdsc_cfg->initial_offset = REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK, pps_temp);
 	vdsc_cfg->final_offset = REG_FIELD_GET(DSC_FINAL_OFFSET_MASK, pps_temp);
 
 	/* PPS_9 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 9, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 9);
 
 	vdsc_cfg->rc_model_size = REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
 
 	/* PPS_10 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 10, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 10);
 
 	vdsc_cfg->rc_quant_incr_limit0 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
 	vdsc_cfg->rc_quant_incr_limit1 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
 
 	/* PPS_16 */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 16, &pps_temp);
+	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 16);
 
 	vdsc_cfg->slice_chunk_size = REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
 
 	if (DISPLAY_VER(i915) >= 14) {
 		/* PPS_17 */
-		intel_dsc_read_and_verify_pps_reg(crtc_state, 17, &pps_temp);
+		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 17);
 
 		vdsc_cfg->second_line_bpg_offset = REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
 
 		/* PPS_18 */
-		intel_dsc_read_and_verify_pps_reg(crtc_state, 18, &pps_temp);
+		pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 18);
 
 		vdsc_cfg->nsl_bpg_offset = REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp);
 		vdsc_cfg->second_line_offset_adj = REG_FIELD_GET(DSC_SL_OFFSET_ADJ_MASK, pps_temp);
-- 
2.39.2

