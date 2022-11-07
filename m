Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DD261ED3B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61AE10E251;
	Mon,  7 Nov 2022 08:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCC010E261
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 08:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667810649; x=1699346649;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=arqKwnUFkAFi1oAIJzdo+cxuTSGvz+pxWpVnyFwVzE8=;
 b=kQcJ5At1lLh35ogv62sfhr7RyzHif9Ddt9WuLw3cjQpzSnT6qjTsy5vA
 xY2PnQqimSMz/N5gXrW7rStx/veaVN5tVDgnzO6eBnUy2fJAR/sZ1XYDp
 udw1Ir/U5bH9sfwO+o0NVJdP/YH5vomQz1idPVvr5+LWZQQETg5tPDExZ
 xrKfNN4q7UW6RdVHbBPv1G9/1DT3fABNZmK8pS2mStvntggK6XH/wIr0R
 DTfY377+zoQLHIPo/yNkEfeaLykxcVKONIGXnQnpVT5y+3H3fub9+memb
 78+VYNIHGZEs/7QAumXFRwL0Q5KiDPhN0ZWhLO1CZwg8z4CRTBhscnkEY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311495181"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311495181"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 00:44:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="778406275"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="778406275"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2022 00:44:06 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 14:12:55 +0530
Message-Id: <20221107084258.1353210-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107084258.1353210-1-suraj.kandpal@intel.com>
References: <20221107084258.1353210-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Fill in native_420 field
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

Now that we have laid the groundwork for YUV420 Enablement
we fill up native_420 field in vdsc_cfg and add appropriate
checks wherever required.

---v2
-adding native_422 field as 0 [Vandita]
-filling in second_line_bpg_offset, second_line_offset_adj
and nsl_bpg_offset in vds_cfg when native_420 is true

---v3
-adding display version check to solve igt issue

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    |  2 -
 drivers/gpu/drm/i915/display/intel_dp.c   |  3 -
 drivers/gpu/drm/i915/display/intel_vdsc.c | 74 ++++++++++++++++++++++-
 3 files changed, 71 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index e05e7cd6c412..f0c79247cc83 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1625,8 +1625,6 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	if (crtc_state->dsc.slice_count > 1)
 		crtc_state->dsc.dsc_split = true;
 
-	vdsc_cfg->convert_rgb = true;
-
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a5c31ac1ec73..b7b7b40ce7ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1440,9 +1440,6 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 		min(intel_dp_source_dsc_version_minor(intel_dp),
 		    intel_dp_sink_dsc_version_minor(intel_dp));
 
-	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
-		DP_DSC_RGB;
-
 	line_buf_depth = drm_dp_dsc_sink_line_buf_depth(intel_dp->dsc_dpcd);
 	if (!line_buf_depth) {
 		drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index a642975a1b61..66a4f55c8955 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -462,14 +462,47 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
 	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
 					     pipe_config->dsc.slice_count);
-
-	/* Gen 11 does not support YCbCr */
+	/*
+	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
+	 * else 1
+	 */
+	vdsc_cfg->convert_rgb = !(pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+				  pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444);
+
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		vdsc_cfg->native_420 = true;
+	/* We do not support YcBCr422 as of now */
+	vdsc_cfg->native_422 = false;
+	/* Gen 11 does not support YCbCr422 */
 	vdsc_cfg->simple_422 = false;
 	/* Gen 11 does not support VBR */
 	vdsc_cfg->vbr_enable = false;
 
 	/* Gen 11 only supports integral values of bpp */
 	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
+	/*
+	 * According to DSC 1.2 specs if native_420 is set:
+	 * -We need to double the current bpp.
+	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
+	 * height < 8.
+	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
+	 * preservation in second line.
+	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
+	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
+	 * fractional bits.
+	 */
+	if (vdsc_cfg->native_420) {
+		vdsc_cfg->bits_per_pixel <<= 1;
+		if (vdsc_cfg->slice_height >= 8)
+			vdsc_cfg->second_line_bpg_offset = 12;
+		else
+			vdsc_cfg->second_line_bpg_offset =
+				2 * (vdsc_cfg->slice_height - 1);
+		vdsc_cfg->second_line_offset_adj = 512;
+		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
+							vdsc_cfg->slice_height - 1);
+	}
+
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
 	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
@@ -596,8 +629,13 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 		DSC_VER_MIN_SHIFT |
 		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
 		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
-	if (vdsc_cfg->dsc_version_minor == 2)
+	if (vdsc_cfg->dsc_version_minor == 2) {
 		pps_val |= DSC_ALT_ICH_SEL;
+		if (vdsc_cfg->native_420)
+			pps_val |= DSC_NATIVE_420_ENABLE;
+		if (vdsc_cfg->native_422)
+			pps_val |= DSC_NATIVE_422_ENABLE;
+	}
 	if (vdsc_cfg->block_pred_enable)
 		pps_val |= DSC_BLOCK_PREDICTION;
 	if (vdsc_cfg->convert_rgb)
@@ -908,6 +946,36 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 				       pps_val);
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		/* Populate PICTURE_PARAMETER_SET_17 registers */
+		pps_val = 0;
+		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
+		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
+		if (is_pipe_dsc(crtc, cpu_transcoder)) {
+			intel_de_write(dev_priv,
+				       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
+				       pps_val);
+			if (crtc_state->dsc.dsc_split)
+				intel_de_write(dev_priv,
+					       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
+					       pps_val);
+		}
+
+		/* Populate PICTURE_PARAMETER_SET_18 registers */
+		pps_val = 0;
+		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
+			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
+		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
+		if (is_pipe_dsc(crtc, cpu_transcoder)) {
+			intel_de_write(dev_priv,
+				       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
+				       pps_val);
+			if (crtc_state->dsc.dsc_split)
+				intel_de_write(dev_priv,
+					       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
+					       pps_val);
+		}
+	}
 	/* Populate the RC_BUF_THRESH registers */
 	memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
 	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
-- 
2.25.1

