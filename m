Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9338CA4D683
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A0C310E547;
	Tue,  4 Mar 2025 08:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SlpW6SgL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDE710E545;
 Tue,  4 Mar 2025 08:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077161; x=1772613161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IkTimu+s3lQPvB4IJfIzPapARPVJS5feJjkvj3cw1Tc=;
 b=SlpW6SgL/lKhKHsKmPKjL/cqSnu1nmc3e6xvdt36BSPtU1gD/q444TTw
 jlrcKl3TzosFI0V03mWDPRmrEqweYK8I03lv7HAQFhuZZVhZoIy8GNnP5
 3mHk2fA1KHikH7Jjjq7F33GY32mzjKYjmCxuNKMl+3EdzeMmCeaFoH3qm
 MM3i5eD0WqH/1Jy5LuEp2Ji1O9082TLb6+AvCb30u/m0PfP1FNbLwPTVf
 OKLziKMh9qdEWVT5bG15tpNPgLJJtzogQVtc8e46BB8f66LLdLJR7+1FT
 CZfATpfvtQQoPfPrFEoxC5XWTgig32lUBqHkH2XYs/3hJ3bl5O4MGKQ1u w==;
X-CSE-ConnectionGUID: 5/NVO/SOQ5axDFYBNNhvxg==
X-CSE-MsgGUID: PWUdrWXTT7yEEykMceoamg==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910226"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910226"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:41 -0800
X-CSE-ConnectionGUID: ZQHaGxsHRqGq9Z8/5r/xeA==
X-CSE-MsgGUID: 0jRMa/2MSJGHLskRKxa2JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492270"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 22/22] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Tue,  4 Mar 2025 13:49:48 +0530
Message-ID: <20250304081948.3177034-23-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
bits are not required. Since the support for these bits is going to
be deprecated in upcoming platforms, avoid writing these bits for the
platforms that do not use legacy Timing Generator.

Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 68 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c     |  1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 55 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c31a87d8afd3..daea0eefc0ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -121,6 +121,7 @@
 #include "intel_vdsc_regs.h"
 #include "intel_vga.h"
 #include "intel_vrr.h"
+#include "intel_vrr_regs.h"
 #include "intel_wm.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
@@ -2636,8 +2637,30 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(display, transcoder));
 }
 
+static void intel_crtc_set_vtotal(struct intel_display *display,
+				  enum transcoder cpu_transcoder,
+				  u32 crtc_vdisplay, u32 crtc_vtotal)
+{
+	u32 vtotal_bits;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not required. Since the support for these bits is going to
+	 * be deprecated in upcoming platforms, avoid writing these bits for the
+	 * platforms that do not use legacy Timing Generator.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		vtotal_bits = 0;
+	else
+		vtotal_bits = VTOTAL(crtc_vtotal - 1);
+
+	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) | vtotal_bits);
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -2700,9 +2723,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
-	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
+
 	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
@@ -2716,13 +2738,13 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	 * bits. */
 	if (IS_HASWELL(dev_priv) && cpu_transcoder == TRANSCODER_EDP &&
 	    (pipe == PIPE_B || pipe == PIPE_C))
-		intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, pipe),
-			       VACTIVE(crtc_vdisplay - 1) |
-			       VTOTAL(crtc_vtotal - 1));
+			intel_crtc_set_vtotal(display, (enum transcoder)pipe,
+					      crtc_vdisplay, crtc_vtotal);
 }
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -2765,9 +2787,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
@@ -2805,6 +2825,29 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 				     TRANSCONF(dev_priv, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
 }
 
+static void intel_crtc_get_vtotal(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	u32 tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
+
+	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not filled. Since for these platforms TRAN_VMIN is always
+	 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
+	 * adjusted_mode.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		tmp = intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder));
+		adjusted_mode->crtc_vtotal = tmp + 1;
+	} else {
+		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+	}
+}
+
 static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 					 struct intel_crtc_state *pipe_config)
 {
@@ -2829,9 +2872,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
-	tmp = intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder));
-	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
-	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+	intel_crtc_get_vtotal(pipe_config);
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
@@ -8192,8 +8233,7 @@ void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
 	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
+	intel_crtc_set_vtotal(display, cpu_transcoder, 480, 525);
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
 	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7c9560df81b1..8631d97d0291 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -554,7 +554,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-static
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 {
 	if (!HAS_VRR(display))
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 780246231d35..3908e7e3c0e9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -40,5 +40,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

