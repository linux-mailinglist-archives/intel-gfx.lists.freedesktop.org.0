Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A9CA70FDE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 05:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE3A10E650;
	Wed, 26 Mar 2025 04:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e1Joadsj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0179010E650;
 Wed, 26 Mar 2025 04:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742962650; x=1774498650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uDk2Y3dspkvsyJic0ehThqfcxhoY7SlUEW6a/gd503s=;
 b=e1Joadsjset+ErVbTg3HKD4hyZaFJg0VYtdSe/cswOl1N3JrTNL4IhM+
 DFErpf3E86HZmnOgJFH3Zl5Kar0pBLYPyGngedHAs7KT3d1eCPZL7zQ0s
 bnQnKjq38HZxN4+kf3Tp25Oz5WP6JC+b/w0iCFpg8qdjD5cW4VgIqUgLL
 BSQiUeUx0DMPUAS/0KdndFI48ZlMSD7LEd83jRk28LBJ3APiqJ31DBT8l
 ri4NnAU0gehgjWXoA/OHLm2sxsFbzPLkEP+K39IWXw5tK2md/pmOLywfX
 h1mYEq9j3W1Dx7EpQpElLsZ3aGma1r5sk5o9DqjF9xBHTNH8B5vejKvBA g==;
X-CSE-ConnectionGUID: PzEVCj/IS0aIZ8TT8DE8ag==
X-CSE-MsgGUID: U3/T3oa5RAmKfdV5qtu20Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="61627965"
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="61627965"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:30 -0700
X-CSE-ConnectionGUID: tBq7yMOISn6Q8HcBVoCOyA==
X-CSE-MsgGUID: bBDnwxT5QHKBc+I+YtiahA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,276,1736841600"; d="scan'208";a="124423135"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 21:17:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Wed, 26 Mar 2025 09:35:38 +0530
Message-ID: <20250326040538.504861-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
References: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
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

v2: Avoid having a helper for manipulating VTOTAL register, and instead
just make the change where required. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 15 +++++--
 2 files changed, 50 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bde53b2de70c..37e27dcfda05 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2639,6 +2639,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+	u32 vtotal_bits;
 	int vsyncshift = 0;
 
 	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
@@ -2695,9 +2696,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
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
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+		       vtotal_bits);
+
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
@@ -2722,6 +2735,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+	u32 vtotal_bits;
 
 	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
 
@@ -2755,13 +2769,24 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
 		       VBLANK_START(crtc_vblank_start - 1) |
 		       VBLANK_END(crtc_vblank_end - 1));
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
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
 	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+		       vtotal_bits);
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
@@ -2824,7 +2849,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 
 	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
 	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
-	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
+
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not filled. The value for adjusted_mode->crtc_vtotal is read
+	 * from VRR_VMIN register in intel_vrr_get_config.
+	 * Just set this to 0 here.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		adjusted_mode->crtc_vtotal = 0;
+	else
+		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
 
 	/* FIXME TGL+ DSI transcoders have this! */
 	if (!transcoder_is_dsi(cpu_transcoder)) {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 414f93851059..cace1d7c99d5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -674,9 +674,19 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	u32 trans_vrr_ctl, trans_vrr_vsync;
+	u32 trans_vrr_ctl, trans_vrr_vsync, trans_vrr_vmin;
 	bool vrr_enable;
 
+	/*
+	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
+	 * bits are not filled. Since for these platforms TRAN_VMIN is always
+	 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
+	 * adjusted_mode.
+	 */
+	trans_vrr_vmin = intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_state->hw.adjusted_mode.crtc_vtotal = trans_vrr_vmin;
+
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
@@ -705,8 +715,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmax = intel_de_read(display,
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmin = intel_de_read(display,
-						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+		crtc_state->vrr.vmin = trans_vrr_vmin;
 
 		if (HAS_AS_SDP(display)) {
 			trans_vrr_vsync =
-- 
2.45.2

