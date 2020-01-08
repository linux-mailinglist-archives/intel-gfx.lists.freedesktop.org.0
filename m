Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 000C9134590
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170746E89A;
	Wed,  8 Jan 2020 15:03:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FAB6E899
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:03:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 07:03:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215975745"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga008.jf.intel.com with ESMTP; 08 Jan 2020 07:03:13 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 19:59:55 +0530
Message-Id: <20200108143002.13695-3-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200108143002.13695-1-vandita.kulkarni@intel.com>
References: <20200108143002.13695-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V5 2/9] drm/i915/dsi: Add vblank calculation for
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

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 52 +++++++++++++++++---------
 1 file changed, 35 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ca37beca3e41..66dc8be672b8 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -808,9 +808,11 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	enum transcoder dsi_trans;
 	/* horizontal timings */
 	u16 htotal, hactive, hsync_start, hsync_end, hsync_size;
+	u16 cal_htotal, cal_vtotal;
 	u16 hback_porch;
 	/* vertical timings */
 	u16 vtotal, vactive, vsync_start, vsync_end, vsync_shift;
+	int bpp, line_time_us, byte_clk_period_ns;
 	int mul = 1, div = 1;
 
 	/*
@@ -827,14 +829,27 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	hactive = adjusted_mode->crtc_hdisplay;
-	htotal = DIV_ROUND_UP(adjusted_mode->crtc_htotal * mul, div);
+	vactive = adjusted_mode->crtc_vdisplay;
+	if (is_cmd_mode(intel_dsi)) {
+		bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
+		byte_clk_period_ns = 8 * 1000000 / intel_dsi->pclk;
+		cal_htotal = hactive + 160;
+		line_time_us = (cal_htotal * (bpp / 8) * byte_clk_period_ns) / (1000 * intel_dsi->lane_count);
+		cal_vtotal = vactive + DIV_ROUND_UP(460, line_time_us);
+	}
+
+	if (is_vid_mode(intel_dsi))
+		cal_htotal = adjusted_mode->crtc_htotal;
+	htotal = DIV_ROUND_UP(cal_htotal * mul, div);
 	hsync_start = DIV_ROUND_UP(adjusted_mode->crtc_hsync_start * mul, div);
 	hsync_end = DIV_ROUND_UP(adjusted_mode->crtc_hsync_end * mul, div);
 	hsync_size  = hsync_end - hsync_start;
 	hback_porch = (adjusted_mode->crtc_htotal -
 		       adjusted_mode->crtc_hsync_end);
-	vactive = adjusted_mode->crtc_vdisplay;
-	vtotal = adjusted_mode->crtc_vtotal;
+
+	if (is_vid_mode(intel_dsi))
+		cal_vtotal = adjusted_mode->crtc_vtotal;
+	vtotal = cal_vtotal;
 	vsync_start = adjusted_mode->crtc_vsync_start;
 	vsync_end = adjusted_mode->crtc_vsync_end;
 	vsync_shift = hsync_start - htotal / 2;
@@ -862,7 +877,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	}
 
 	/* TRANS_HSYNC register to be programmed only for video mode */
-	if (intel_dsi->operation_mode == INTEL_DSI_VIDEO_MODE) {
+	if (is_vid_mode(intel_dsi)) {
 		if (intel_dsi->video_mode_format ==
 		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
 			/* BSPEC: hsync size should be atleast 16 pixels */
@@ -885,13 +900,12 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
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
 		I915_WRITE(VTOTAL(dsi_trans),
@@ -904,22 +918,26 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (vsync_start < vactive)
 		DRM_ERROR("vsync_start less than vactive\n");
 
-	/* program TRANS_VSYNC register */
-	for_each_dsi_port(port, intel_dsi->ports) {
-		dsi_trans = dsi_port_to_transcoder(port);
-		I915_WRITE(VSYNC(dsi_trans),
-			   (vsync_start - 1) | ((vsync_end - 1) << 16));
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
-		I915_WRITE(VSYNCSHIFT(dsi_trans), vsync_shift);
+	if (is_vid_mode(intel_dsi)) {
+		for_each_dsi_port(port, intel_dsi->ports) {
+			dsi_trans = dsi_port_to_transcoder(port);
+			I915_WRITE(VSYNCSHIFT(dsi_trans), vsync_shift);
+		}
 	}
 
 	/* program TRANS_VBLANK register, should be same as vtotal programmed */
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
