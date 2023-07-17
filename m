Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DF756027
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 12:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9F510E228;
	Mon, 17 Jul 2023 10:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB4910E22B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jul 2023 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689588691; x=1721124691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5WbodTMk1zqD/ZxXDvirUSz4iv6gO6XRt5a3PnJeDg4=;
 b=cEXKS/wx/XcaV9Sl0RNRpR+T7qWfccPZiR3/9uMk3CzPzR5maiy1LSuk
 WJjLjWw2GwzLc5OTXw9NGMxE06GrqOftse56iNRgSjqmrG1y/CrwmfiBk
 a8Y/QaPkaAAmoFWISf1Gz5iCS1Ec6ugNfKnv8HU5ectKpXXYBYW4ej/gC
 akhCFd5WgFT0gm713DQQ3PqbE4L7RdPA/oXHwxaOmcqQ53by1t8aCzMQK
 HNRViuCM0Vz2mCRzsRNafFyEQ65yaOVCL77zzjzv+/TQm6VpMmTFnoo+F
 80FqMTZ3/ODS+1bi3BdUV2R8BOrNc407ImFt66TsiSjOJ1h7jjPdGxpJG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="369445997"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="369445997"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 03:11:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="836832491"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836832491"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 03:11:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 15:39:30 +0530
Message-Id: <20230717100931.2989980-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717100931.2989980-1-suraj.kandpal@intel.com>
References: <20230717100931.2989980-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/7] drm/i915/vdsc: Fill the
 intel_dsc_get_pps_config function
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

We have setup both the read and write functions so we can
move ahead and fill in all the readout state from PPS register
into the crtc_state so we can send it for comparision.

--v2
-Shorten comment to just PPSX rather than having the whole
"Readout PPSX register" [Jani]
-Remove pps_temp reinitialization as its being initialized in
the read function [Jani]
-Use REG_FIELD_GET to readout certain fields of dsc registers
[Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 99 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  3 +
 2 files changed, 96 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2f0362241059..8c57a42bb8f7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -828,18 +828,105 @@ static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_stat
 static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
-	u32 pps_temp1, pps_temp2;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	u32 pps_temp;
+
+	/* PPS_0 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp);
 
-	/* Readout PPS_0 and PPS_1 registers */
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
-	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
+	vdsc_cfg->bits_per_component = (pps_temp & DSC_BPC_MASK) >> DSC_BPC_SHIFT;
+	vdsc_cfg->line_buf_depth =
+		(pps_temp & DSC_LINE_BUF_DEPTH_MASK) >> DSC_LINE_BUF_DEPTH_SHIFT;
+	vdsc_cfg->block_pred_enable = pps_temp & DSC_BLOCK_PREDICTION;
+	vdsc_cfg->convert_rgb = pps_temp & DSC_COLOR_SPACE_CONVERSION;
+	vdsc_cfg->simple_422 = pps_temp & DSC_422_ENABLE;
+	vdsc_cfg->native_422 = pps_temp & DSC_NATIVE_422_ENABLE;
+	vdsc_cfg->native_420 = pps_temp & DSC_NATIVE_420_ENABLE;
+	vdsc_cfg->vbr_enable = pps_temp & DSC_VBR_ENABLE;
 
-	vdsc_cfg->bits_per_pixel = pps_temp2;
+	/* PPS_1 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp);
 
-	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
+	vdsc_cfg->bits_per_pixel = pps_temp;
+
+	if (vdsc_cfg->native_420)
 		vdsc_cfg->bits_per_pixel >>= 1;
 
 	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
+
+	/* PPS_2 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
+
+	vdsc_cfg->pic_width = REG_FIELD_GET(DSC_PIC_WIDTH_MASK, pps_temp);
+	vdsc_cfg->pic_height = REG_FIELD_GET(DSC_PIC_HEIGHT_MASK, pps_temp);
+
+	/* PPS_3 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 3, &pps_temp);
+
+	vdsc_cfg->slice_width = REG_FIELD_GET(DSC_SLICE_WIDTH_MASK, pps_temp);
+	vdsc_cfg->slice_height = REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK, pps_temp);
+
+	/* PPS_4 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 4, &pps_temp);
+
+	vdsc_cfg->initial_dec_delay = REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
+	vdsc_cfg->initial_xmit_delay = REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
+
+	/* PPS_5 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 5, &pps_temp);
+
+	vdsc_cfg->scale_decrement_interval = REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
+	vdsc_cfg->scale_increment_interval = REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
+
+	/* PPS_6 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 6, &pps_temp);
+
+	vdsc_cfg->initial_scale_value = REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp);
+	vdsc_cfg->first_line_bpg_offset = REG_FIELD_GET(DSC_FIRST_LINE_BPG_OFFSET_MASK, pps_temp);
+	vdsc_cfg->flatness_min_qp = REG_FIELD_GET(DSC_FLATNESS_MIN_QP_MASK, pps_temp);
+	vdsc_cfg->flatness_max_qp = REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
+
+	/* PPS_7 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 7, &pps_temp);
+
+	vdsc_cfg->nfl_bpg_offset = REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
+	vdsc_cfg->slice_bpg_offset = REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
+
+	/* PPS_8 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 8, &pps_temp);
+
+	vdsc_cfg->initial_offset = REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK, pps_temp);
+	vdsc_cfg->final_offset = REG_FIELD_GET(DSC_FINAL_OFFSET_MASK, pps_temp);
+
+	/* PPS_9 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 9, &pps_temp);
+
+	vdsc_cfg->rc_model_size = REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
+
+	/* PPS_10 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 10, &pps_temp);
+
+	vdsc_cfg->rc_quant_incr_limit0 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
+	vdsc_cfg->rc_quant_incr_limit1 = REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
+
+	/* PPS_16 */
+	intel_dsc_read_and_verify_pps_reg(crtc_state, 16, &pps_temp);
+
+	vdsc_cfg->slice_chunk_size = REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
+
+	if (DISPLAY_VER(i915) >= 14) {
+		/* PPS_17 */
+		intel_dsc_read_and_verify_pps_reg(crtc_state, 17, &pps_temp);
+
+		vdsc_cfg->second_line_bpg_offset = REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
+
+		/* PPS_18 */
+		intel_dsc_read_and_verify_pps_reg(crtc_state, 18, &pps_temp);
+
+		vdsc_cfg->nsl_bpg_offset = REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp);
+		vdsc_cfg->second_line_offset_adj = REG_FIELD_GET(DSC_SL_OFFSET_ADJ_MASK, pps_temp);
+	}
 }
 
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 785ede31116e..ebd1a59615f7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -99,6 +99,9 @@
 #define  DSC_BPC_SHIFT			8
 #define  DSC_VER_MIN_SHIFT		4
 #define  DSC_VER_MAJ			(0x1 << 0)
+#define  DSC_LINE_BUF_DEPTH_MASK	REG_GENMASK(15, 12)
+#define  DSC_BPC_MASK			REG_GENMASK(11, 8)
+
 
 #define DSCA_PICTURE_PARAMETER_SET_1		_MMIO(0x6B204)
 #define DSCC_PICTURE_PARAMETER_SET_1		_MMIO(0x6BA04)
-- 
2.25.1

