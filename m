Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE26A6DBED
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D588D10E451;
	Mon, 24 Mar 2025 13:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjGNo0gc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA8310E448;
 Mon, 24 Mar 2025 13:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823907; x=1774359907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MJR4VsnGBGG5VxCSBQ/Pd/Hbl6Qxv0VofXFymoRHLcs=;
 b=QjGNo0gcK4/uknI9efiFKQOjJV8wLwnIcE5wuxcUavjoZQnv0Qi5tcRR
 bDhl9fIXKLbs6bLHpE0+S35Bec1TisJqyrjlEDXbxTO3b4In8t3IArfJx
 50khHETRvGSWiL3MD8CQoPoqiP60OZ67wEZ3yg38Bmc6dfRf/v4Cbgt4Q
 kTTjKs6LpE7r/gz00WlThKXhzZC3C7iywJJy31gBnMKXQKmwyBULGs+62
 TnepdPDMGJGnkv1kl36i6LU+V86hbNlcqk1GEFJWPBU/6tqOpx1gSwLPD
 xWhrmhyncCzzyiQ0VzhAlnFWJqdMm+Vlx+SAzHJeLNzPG4MNroEhAoEu8 w==;
X-CSE-ConnectionGUID: eXD2mIV6R8WrUybEV70khA==
X-CSE-MsgGUID: HXSmWgEWSWObUkQwm1k1gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955759"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955759"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:07 -0700
X-CSE-ConnectionGUID: bfC6tqZGQq+iuSrXhkayQQ==
X-CSE-MsgGUID: pODP48g2SjKZdXL+T/6huA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040801"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:45:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/16] drm/i915/display: Separate out functions to get/set
 VTOTAL register
Date: Mon, 24 Mar 2025 19:02:47 +0530
Message-ID: <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Introduce helpers to get and set TRANS_VTOTAL registers.
This will pave way to avoid reading/writing VTOTAL.Vtotal bits for
platforms that always use VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
 1 file changed, 27 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ae1dc32044fb..fa9c6793357e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2638,6 +2638,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(display, transcoder));
 }
 
+static void intel_crtc_set_vtotal(struct intel_display *display,
+				  enum transcoder cpu_transcoder,
+				  u32 crtc_vdisplay, u32 crtc_vtotal)
+{
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2702,9 +2711,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
+
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
@@ -2718,9 +2726,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * bits. */
 	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		intel_de_write(display, TRANS_VTOTAL(display, pipe),
-			       VACTIVE(crtc_vdisplay - 1) |
-			       VTOTAL(crtc_vtotal - 1));
+		intel_crtc_set_vtotal(display, (enum transcoder)pipe,
+				      crtc_vdisplay, crtc_vtotal);
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
@@ -2766,9 +2773,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
@@ -2806,6 +2811,17 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
 }
 
+static void intel_crtc_get_vtotal(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	u32 tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
+
+	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
+	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+}
+
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 					 struct intel_crtc_state *pipe_config)
 {
@@ -2829,9 +2845,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
-	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
-	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
-	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+	intel_crtc_get_vtotal(pipe_config);
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
@@ -8168,8 +8182,7 @@ void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
 	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, 480, 525);
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
 	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
-- 
2.45.2

