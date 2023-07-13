Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC13D7518CB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 08:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0164F10E1A0;
	Thu, 13 Jul 2023 06:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F4B10E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 06:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689229869; x=1720765869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kx7ZjPMbZH13iAWwuW/A03gcz351yIJ0ze68KQ3oHT8=;
 b=K9pYNH1q5t4zKzNfT6gqTO3gnl5JSmrQge3bg+6JmD7IW10SlPgEe6/S
 VIGoRt6K3CLwoEPFKFeJ6sWXdnFdol9ECmm1xrbqo00Weo36iRmRCqnQZ
 8kYIATEvgLoOP/m4VqXm6PVr6x8dSihBP8tWMNRQIvcSNqdbEJhb+XQVh
 lGY8uMe/7wX+gjiptTvqknJ24gaB1lSKsXadkoorFLFbz/S1cS4kbI1WX
 mna3GS0+BFeyoM5A4HLRlgDiMOWOamzjmcMr1Mn5csMMPA5oqQRat7MiL
 BmSXpVkuuorQyllc2D+Ye6BeNxSga71aTEUsFbJ9m5HAHrnjvld7gN8nB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365133771"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="365133771"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 23:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699135409"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="699135409"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 23:31:07 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 11:59:23 +0530
Message-Id: <20230713062924.2894736-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713062924.2894736-1-suraj.kandpal@intel.com>
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/vdsc: Fill the
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
index 9d885fce9428..29978fca8d97 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -944,18 +944,105 @@ static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_stat
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
index 8945eb1d493a..8605d36253ab 100644
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

