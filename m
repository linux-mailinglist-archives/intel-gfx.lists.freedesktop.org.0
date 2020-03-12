Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6BB1828CD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 07:14:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73806EA2C;
	Thu, 12 Mar 2020 06:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C2A76EA2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 06:14:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 23:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="242923080"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Mar 2020 23:14:23 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Mar 2020 11:08:34 +0530
Message-Id: <20200312053841.2794-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200312053841.2794-1-vandita.kulkarni@intel.com>
References: <20200312053841.2794-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V8 2/9] drm/i915/dsi: Add vblank calculation for
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
v5: Fix the values used for calculation, use afe_clk for
    byte clock calculation, use intel_de_write/read (Jani)

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 48 +++++++++++++++++++-------
 1 file changed, 36 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 7744a6fd5d26..17aa3fd780a8 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -849,14 +849,33 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	htotal = DIV_ROUND_UP(adjusted_mode->crtc_htotal * mul, div);
+
+	if (is_vid_mode(intel_dsi))
+		htotal = DIV_ROUND_UP(adjusted_mode->crtc_htotal * mul, div);
+	else
+		htotal = DIV_ROUND_UP((hactive + 160) * mul, div);
+
 	hsync_start = DIV_ROUND_UP(adjusted_mode->crtc_hsync_start * mul, div);
 	hsync_end = DIV_ROUND_UP(adjusted_mode->crtc_hsync_end * mul, div);
 	hsync_size  = hsync_end - hsync_start;
 	hback_porch = (adjusted_mode->crtc_htotal -
 		       adjusted_mode->crtc_hsync_end);
 	vactive = adjusted_mode->crtc_vdisplay;
-	vtotal = adjusted_mode->crtc_vtotal;
+
+	if (is_vid_mode(intel_dsi)) {
+		vtotal = adjusted_mode->crtc_vtotal;
+	} else {
+		int bpp, line_time_us, byte_clk_period_ns;
+
+		if (crtc_state->dsc.compression_enable)
+			bpp = crtc_state->dsc.compressed_bpp;
+		else
+			bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+
+		byte_clk_period_ns = 1000000 / afe_clk(encoder, crtc_state);
+		line_time_us = (htotal * (bpp / 8) * byte_clk_period_ns) / (1000 * intel_dsi->lane_count);
+		vtotal = vactive + DIV_ROUND_UP(400, line_time_us);
+	}
 	vsync_start = adjusted_mode->crtc_vsync_start;
 	vsync_end = adjusted_mode->crtc_vsync_end;
 	vsync_shift = hsync_start - htotal / 2;
@@ -885,7 +904,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
-	if (intel_dsi->operation_mode == INTEL_DSI_VIDEO_MODE) {
+	if (is_vid_mode(intel_dsi)) {
 		if (intel_dsi->video_mode_format ==
 		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
@@ -928,22 +947,27 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
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
+			intel_de_write(dev_priv, VSYNC(dsi_trans),
+				       (vsync_start - 1) | ((vsync_end - 1) << 16));
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
+			intel_de_write(dev_priv, VSYNCSHIFT(dsi_trans),
+				       vsync_shift);
+		}
 	}
 
 	/* program TRANS_VBLANK register, should be same as vtotal programmed */
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
