Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6504307EA8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8036E9E4;
	Thu, 28 Jan 2021 19:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DB26E9E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
IronPort-SDR: kyAm85y+DdIgtg3gATFMRe4qeQteTt470yNXmsk/TuXwHBNiewRfPbABoN7GNRcD3KqIhfUsFU
 AGS4RusPVwJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384043"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384043"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:38 -0800
IronPort-SDR: x7q9OUdHaRsJ3+ikJJ7pxvHyD/nOsFTUxlpkJxspRBlxJRe2/B2SUtT0km9b0uzUqMHWu30wcW
 TVvoFEkwQkXw==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110195"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:24:11 -0800
Message-Id: <20210128192413.1715802-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/18] drm/i915/display13: Calculate VDSC RC
 parameters
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
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>,
 Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

Add methods to calculate rc parameters for all bpps, against the fixed
arrays that we already have for 8,10,12 valid o/p bpps, to cover RGB 444
formats.  Our hw doesnt support YUV compression yet.  The calculations
used here are from VESA C model for DSC 1.1

Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Mohammed Khajapasha <mohammed.khajapasha@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 98 ++++++++++++++++++++---
 1 file changed, 88 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8d8be0a006c7..41edcb7fdb47 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -5,7 +5,7 @@
  * Author: Gaurav K Singh <gaurav.k.singh@intel.com>
  *         Manasi Navare <manasi.d.navare@intel.com>
  */
-
+#include <linux/limits.h>
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
@@ -376,12 +376,74 @@ static bool is_pipe_dsc(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static void
+calculate_rc_params(struct rc_parameters *rc,
+		    struct drm_dsc_config *vdsc_cfg)
+{
+	int bpc = vdsc_cfg->bits_per_component;
+	int bpp = vdsc_cfg->bits_per_pixel >> 4;
+	int ofs_und6[] = { 0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12 };
+	int ofs_und8[] = { 2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12 };
+	int ofs_und12[] = { 2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12 };
+	int ofs_und15[] = { 10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12 };
+	int qp_bpc_modifier = (bpc - 8) * 2;
+	u32 res, buf_i;
+
+	if (vdsc_cfg->slice_height >= 8)
+		rc->first_line_bpg_offset = 12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
+	else
+		rc->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
+
+	/* Our hw supports only 444 modes as of today */
+	if (bpp >= 12)
+		rc->initial_offset = 2048;
+	else if (bpp >= 10)
+		rc->initial_offset = 5632 - DIV_ROUND_UP(((bpp - 10) * 3584), 2);
+	else if (bpp >= 8)
+		rc->initial_offset = 6144 - DIV_ROUND_UP(((bpp - 8) * 512), 2);
+	else
+		rc->initial_offset = 6144;
+
+	/* initial_xmit_delay = rc_model_size/2/compression_bpp */
+	rc->initial_xmit_delay = DIV_ROUND_UP(DSC_RC_MODEL_SIZE_CONST, 2 * bpp);
+
+	rc->flatness_min_qp = 3 + qp_bpc_modifier;
+	rc->flatness_max_qp = 12 + qp_bpc_modifier;
+
+	rc->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
+	rc->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
+
+	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
+		/* Calculate range_bgp_offset */
+		if (bpp <= 6) {
+			rc->rc_range_params[buf_i].range_bpg_offset = ofs_und6[buf_i];
+		} else if (bpp <= 8) {
+			res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
+			rc->rc_range_params[buf_i].range_bpg_offset =
+								ofs_und6[buf_i] + res;
+		} else if (bpp <= 12) {
+			rc->rc_range_params[buf_i].range_bpg_offset =
+								ofs_und8[buf_i];
+		} else if (bpp <= 15) {
+			res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
+			rc->rc_range_params[buf_i].range_bpg_offset =
+								ofs_und12[buf_i] + res;
+		} else {
+			rc->rc_range_params[buf_i].range_bpg_offset =
+								ofs_und15[buf_i];
+		}
+	}
+	return;
+}
+
 int intel_dsc_compute_params(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_dsc_config *vdsc_cfg = &pipe_config->dsc.config;
 	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
 	const struct rc_parameters *rc_params;
+	struct rc_parameters *rc = NULL;
 	u8 i = 0;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
@@ -416,9 +478,24 @@ int intel_dsc_compute_params(struct intel_encoder *encoder,
 		vdsc_cfg->rc_buf_thresh[13] = 0x7D;
 	}
 
-	rc_params = get_rc_params(compressed_bpp, vdsc_cfg->bits_per_component);
-	if (!rc_params)
-		return -EINVAL;
+	/*
+	 * From Display13 onwards we supports compression bpps in steps of 1
+	 * upto uncompressed bpp-1, hence add calculations for all the rc
+	 * parameters
+	 */
+	if (HAS_DISPLAY13(dev_priv)) {
+		rc = kmalloc(sizeof(*rc), GFP_KERNEL);
+		if (!rc)
+			return -ENOMEM;
+
+		calculate_rc_params(rc, vdsc_cfg);
+		rc_params = rc;
+	} else {
+		rc_params = get_rc_params(compressed_bpp,
+					  vdsc_cfg->bits_per_component);
+		if (!rc_params)
+			return -EINVAL;
+	}
 
 	vdsc_cfg->first_line_bpg_offset = rc_params->first_line_bpg_offset;
 	vdsc_cfg->initial_xmit_delay = rc_params->initial_xmit_delay;
@@ -444,20 +521,21 @@ int intel_dsc_compute_params(struct intel_encoder *encoder,
 
 	/*
 	 * BitsPerComponent value determines mux_word_size:
-	 * When BitsPerComponent is 12bpc, muxWordSize will be equal to 64 bits
-	 * When BitsPerComponent is 8 or 10bpc, muxWordSize will be equal to
-	 * 48 bits
+	 * When BitsPerComponent is less than or 10bpc, muxWordSize will be equal to
+	 * 48 bits otherwise 64
 	 */
-	if (vdsc_cfg->bits_per_component == 8 ||
-	    vdsc_cfg->bits_per_component == 10)
+	if (vdsc_cfg->bits_per_component <= 10)
 		vdsc_cfg->mux_word_size = DSC_MUX_WORD_SIZE_8_10_BPC;
-	else if (vdsc_cfg->bits_per_component == 12)
+	else
 		vdsc_cfg->mux_word_size = DSC_MUX_WORD_SIZE_12_BPC;
 
 	/* InitialScaleValue is a 6 bit value with 3 fractional bits (U3.3) */
 	vdsc_cfg->initial_scale_value = (vdsc_cfg->rc_model_size << 3) /
 		(vdsc_cfg->rc_model_size - vdsc_cfg->initial_offset);
 
+	if (rc)
+		kfree(rc);
+
 	return 0;
 }
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
