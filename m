Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 530BA4B8CF4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 16:55:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F3E10E8F1;
	Wed, 16 Feb 2022 15:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B13910E8F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 15:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645026907; x=1676562907;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E5fzknbC1NZIx/Iwn0WG0gx8NOVoAhJGX/sFO3366sw=;
 b=W9EKbkqDS7P0AzHBbIxMCHZkS5QTTreJz7RgT+wxK4V8QxHSy+NglABh
 ErMGijKXBDUwG0auAl0R8XyPlLrCJBqQKSwbnLgOsGArDPpO+1ybwUqJ/
 c5Y+LgtY9nA/h1B6olDjb0RdZ10ud/37vo5kdF1zuUYq6t+fpuO6vOs3H
 ncXfk4EaJ8q6vMNSINruJjMNpZoQ5gHo4xPMuQoXNchZ9BCb2BUhVFwTy
 4k4+j07iv8sYJmoYE4Q9a9l01ukh3NlhJHVzyWaOjy0uVHsVI2vHsYROo
 oXEOWcm4rI4zaGkAMRnImIaP5g9qkdVYdjiw7tKj8JF/Rvt7bJRHRz2Kk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="275227674"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="275227674"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 07:47:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="487128597"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 07:47:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 17:47:08 +0200
Message-Id: <20220216154711.3329667-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dsi: disassociate VBT video
 transfer mode from register values
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

The VBT DSI video transfer mode field values have been defined in terms
of the VLV MIPI_VIDEO_MODE_FORMAT register. The ICL DSI code maps that
to ICL DSI_TRANS_FUNC_CONF() register. The values are the same, though
the shift is different.

Make a clean break and disassociate the values from each other. Assume
the values can be different, and translate the VBT value to VLV and ICL
register values as needed. Use the existing macros from intel_bios.h.

This will be useful in splitting the DSI register macros to files by DSI
implementation.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 11 +++----
 drivers/gpu/drm/i915/display/intel_dsi.h     |  4 +--
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +++---
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 33 ++++++++++++++++----
 4 files changed, 39 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 2d5bb9195b20..479d5e1165d9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -788,14 +788,14 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		/* program DSI operation mode */
 		if (is_vid_mode(intel_dsi)) {
 			tmp &= ~OP_MODE_MASK;
-			switch (intel_dsi->video_mode_format) {
+			switch (intel_dsi->video_mode) {
 			default:
-				MISSING_CASE(intel_dsi->video_mode_format);
+				MISSING_CASE(intel_dsi->video_mode);
 				fallthrough;
-			case VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS:
+			case NON_BURST_SYNC_EVENTS:
 				tmp |= VIDEO_MODE_SYNC_EVENT;
 				break;
-			case VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE:
+			case NON_BURST_SYNC_PULSE:
 				tmp |= VIDEO_MODE_SYNC_PULSE;
 				break;
 			}
@@ -960,8 +960,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
 	if (is_vid_mode(intel_dsi)) {
-		if (intel_dsi->video_mode_format ==
-		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
+		if (intel_dsi->video_mode == NON_BURST_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
 			if (hsync_size < 16)
 				drm_err(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index a3a906cb097e..eafef0a87fea 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -79,8 +79,8 @@ struct intel_dsi {
 	 */
 	enum mipi_dsi_pixel_format pixel_format;
 
-	/* video mode format for MIPI_VIDEO_MODE_FORMAT register */
-	u32 video_mode_format;
+	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
+	int video_mode;
 
 	/* eot for MIPI_EOT_DISABLE register */
 	u8 eotp_pkt;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index a85574c413e8..a1cd86e53e21 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -675,11 +675,11 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 	drm_dbg_kms(&i915->drm, "Lane count %d\n", intel_dsi->lane_count);
 	drm_dbg_kms(&i915->drm, "DPHY param reg 0x%x\n", intel_dsi->dphy_reg);
 	drm_dbg_kms(&i915->drm, "Video mode format %s\n",
-		    intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE ?
+		    intel_dsi->video_mode == NON_BURST_SYNC_PULSE ?
 		    "non-burst with sync pulse" :
-		    intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS ?
+		    intel_dsi->video_mode == NON_BURST_SYNC_EVENTS ?
 		    "non-burst with sync events" :
-		    intel_dsi->video_mode_format == VIDEO_MODE_BURST ?
+		    intel_dsi->video_mode == BURST_MODE ?
 		    "burst" : "<unknown>");
 	drm_dbg_kms(&i915->drm, "Burst mode ratio %d\n",
 		    intel_dsi->burst_mode_ratio);
@@ -739,7 +739,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	intel_dsi->dual_link = mipi_config->dual_link;
 	intel_dsi->pixel_overlap = mipi_config->pixel_overlap;
 	intel_dsi->operation_mode = mipi_config->is_cmd_mode;
-	intel_dsi->video_mode_format = mipi_config->video_transfer_mode;
+	intel_dsi->video_mode = mipi_config->video_transfer_mode;
 	intel_dsi->escape_clk_div = mipi_config->byte_clk_sel;
 	intel_dsi->lp_rx_timeout = mipi_config->lp_rx_timeout;
 	intel_dsi->hs_tx_timeout = mipi_config->hs_tx_timeout;
@@ -770,7 +770,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	 * Target ddr frequency from VBT / non burst ddr freq
 	 * multiply by 100 to preserve remainder
 	 */
-	if (intel_dsi->video_mode_format == VIDEO_MODE_BURST) {
+	if (intel_dsi->video_mode == BURST_MODE) {
 		if (mipi_config->target_burst_mode_freq) {
 			u32 bitrate = intel_dsi_bitrate(intel_dsi);
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 20141f33ed64..f0c38173491e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1492,7 +1492,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		 */
 
 		if (is_vid_mode(intel_dsi) &&
-			intel_dsi->video_mode_format == VIDEO_MODE_BURST) {
+			intel_dsi->video_mode == BURST_MODE) {
 			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
 				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
 		} else {
@@ -1568,12 +1568,33 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
 			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
 
-		if (is_vid_mode(intel_dsi))
-			/* Some panels might have resolution which is not a
+		if (is_vid_mode(intel_dsi)) {
+			u32 fmt = intel_dsi->video_frmt_cfg_bits | IP_TG_CONFIG;
+
+			/*
+			 * Some panels might have resolution which is not a
 			 * multiple of 64 like 1366 x 768. Enable RANDOM
-			 * resolution support for such panels by default */
-			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port),
-				       intel_dsi->video_frmt_cfg_bits | intel_dsi->video_mode_format | IP_TG_CONFIG | RANDOM_DPI_DISPLAY_RESOLUTION);
+			 * resolution support for such panels by default.
+			 */
+			fmt |= RANDOM_DPI_DISPLAY_RESOLUTION;
+
+			switch (intel_dsi->video_mode) {
+			default:
+				MISSING_CASE(intel_dsi->video_mode);
+				fallthrough;
+			case NON_BURST_SYNC_EVENTS:
+				fmt |= VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS;
+				break;
+			case NON_BURST_SYNC_PULSE:
+				fmt |= VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE;
+				break;
+			case BURST_MODE:
+				fmt |= VIDEO_MODE_BURST;
+				break;
+			}
+
+			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port), fmt);
+		}
 	}
 }
 
-- 
2.30.2

