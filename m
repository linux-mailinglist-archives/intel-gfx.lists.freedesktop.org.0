Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726DE150703
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:21:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778116E348;
	Mon,  3 Feb 2020 13:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013F56E34A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:21:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:21:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="231020877"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2020 05:21:40 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 18:17:28 +0530
Message-Id: <20200203124735.365-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200203124735.365-1-vandita.kulkarni@intel.com>
References: <20200203124735.365-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V7 2/9] drm/i915/dsi: Add vblank calculation for
 command mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Transcoder timing calculation differ for command mode.

v2: Use is_vid_mode, and use same I915_WRITE (Jani)
v3: Adjust the calculations to reflect dsc compression ratio
v4: Rearrange the vertical and horizontal timing calc, optimize
    local variables usage. (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 56 +++++++++++++++++---------
 1 file changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ce5e38c16201..04df45d627b2 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -849,14 +849,31 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	htotal = DIV_ROUND_UP(adjusted_mode->crtc_htotal * mul, div);
+	vactive = adjusted_mode->crtc_vdisplay;
+
+	/* horizonatal timings */
+	if (is_vid_mode(intel_dsi))
+		htotal = adjusted_mode->crtc_htotal;
+	else
+		htotal = hactive + 160;
+	htotal = DIV_ROUND_UP(htotal * mul, div);
 	hsync_start = DIV_ROUND_UP(adjusted_mode->crtc_hsync_start * mul, div);
 	hsync_end = DIV_ROUND_UP(adjusted_mode->crtc_hsync_end * mul, div);
 	hsync_size  = hsync_end - hsync_start;
 	hback_porch = (adjusted_mode->crtc_htotal -
 		       adjusted_mode->crtc_hsync_end);
-	vactive = adjusted_mode->crtc_vdisplay;
-	vtotal = adjusted_mode->crtc_vtotal;
+
+	/*vertical timings */
+	if (is_vid_mode(intel_dsi)) {
+		vtotal = adjusted_mode->crtc_vtotal;
+	} else {
+		int bpp, line_time_us, byte_clk_period_ns;
+
+		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+		byte_clk_period_ns = 8 * 1000000 / intel_dsi->pclk;
+		line_time_us = (htotal * (bpp / 8) * byte_clk_period_ns) / (1000 * intel_dsi->lane_count);
+		vtotal = vactive + DIV_ROUND_UP(460, line_time_us);
+	}
 	vsync_start = adjusted_mode->crtc_vsync_start;
 	vsync_end = adjusted_mode->crtc_vsync_end;
 	vsync_shift = hsync_start - htotal / 2;
@@ -885,7 +902,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
-	if (intel_dsi->operation_mode == INTEL_DSI_VIDEO_MODE) {
+	if (is_vid_mode(intel_dsi)) {
 		if (intel_dsi->video_mode_format ==
 		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
@@ -909,13 +926,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 		}
 	}
 
-	/* program TRANS_VTOTAL register */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
 		/*
-		 * FIXME: Programing this by assuming progressive mode, since
-		 * non-interlaced info from VBT is not saved inside
-		 * struct drm_display_mode.
+		 * FIXME: Programing this by assuming progressive mode,
+		 * since non-interlaced info from VBT is not saved
+		 * inside struct drm_display_mode.
 		 * For interlace mode: program required pixel minus 2
 		 */
 		intel_de_write(dev_priv, VTOTAL(dsi_trans),
@@ -928,22 +944,26 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (vsync_start < vactive)
 		drm_err(&dev_priv->drm, "vsync_start less than vactive\n");
 
-	/* program TRANS_VSYNC register */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_write(dev_priv, VSYNC(dsi_trans),
-			       (vsync_start - 1) | ((vsync_end - 1) << 16));
+	/* program TRANS_VSYNC register for video mode only */
+	if (is_vid_mode(intel_dsi)) {
+		for_each_dsi_port(port, intel_dsi->ports) {
+			dsi_trans = dsi_port_to_transcoder(port);
+			I915_WRITE(VSYNC(dsi_trans),
+				   (vsync_start - 1) | ((vsync_end - 1) << 16));
+		}
 	}
 
 	/*
-	 * FIXME: It has to be programmed only for interlaced
+	 * FIXME: It has to be programmed only for video modes and interlaced
 	 * modes. Put the check condition here once interlaced
 	 * info available as described above.
 	 * program TRANS_VSYNCSHIFT register
 	 */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		dsi_trans = dsi_port_to_transcoder(port);
-		intel_de_write(dev_priv, VSYNCSHIFT(dsi_trans), vsync_shift);
+	if (is_vid_mode(intel_dsi)) {
+		for_each_dsi_port(port, intel_dsi->ports) {
+			dsi_trans = dsi_port_to_transcoder(port);
+			I915_WRITE(VSYNCSHIFT(dsi_trans), vsync_shift);
+		}
 	}
 
 	/* program TRANS_VBLANK register, should be same as vtotal programmed */
@@ -1032,7 +1052,7 @@ static void gen11_dsi_config_util_pin(struct intel_encoder *encoder,
 				      bool enable)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	u32 tmp;
 
 	/*
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
