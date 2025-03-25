Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F344A6F442
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0181910E569;
	Tue, 25 Mar 2025 11:35:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYfwwLeQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F97910E55D;
 Tue, 25 Mar 2025 11:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902507; x=1774438507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bCkjE23Iz4RQ9FtxnvEetmA0wAzYsiSCNoWRRsrQFF8=;
 b=UYfwwLeQL1wkcuvrkZoU3dnjyQPXP8McH440BKTCcp92PAJJEtBfs83f
 JDmL9b4uIpM0sRT6eL2XVuvm44t7NflHEkctsUHIYHNoJ5PYrqk1bGSpO
 5CpqwDD5/vMhhXdlqBArvFdP8afZ533tRIihn4Dk5dmv2QFbaK64njIqJ
 g1kby1VFQrGlzvOny5WYKml12He5ZTly24K1emBdkl0usG4mqiQ3y2mY+
 fbkaNaZ4abRjNAd52pc0w6vbdvNJ7uLkdziYoEzxhRWJvk3Prc+JRJTZ5
 vsxqGaKe8uEZcGLqSukZbm6mOumxZPN4AfIsPYR9+UNTnpRqBqLBFvQ8e Q==;
X-CSE-ConnectionGUID: bBlI//IQT1WIiybKM9Zf+g==
X-CSE-MsgGUID: oBrmBZdpTtG2RIj3LsdYkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266944"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266944"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:07 -0700
X-CSE-ConnectionGUID: WO15ZMGATH6CuqsxMCnhkw==
X-CSE-MsgGUID: X64zDXbrQAOnlI27ffVnHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070656"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:35:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/16] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Date: Tue, 25 Mar 2025 16:52:48 +0530
Message-ID: <20250325112249.228444-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
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
index ae1dc32044fb..7e06b7e6e4e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2646,6 +2646,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+	u32 vtotal_bits;
 	int vsyncshift = 0;
 
 	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
@@ -2702,9 +2703,21 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
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
@@ -2729,6 +2742,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+	u32 vtotal_bits;
 
 	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
 
@@ -2762,13 +2776,24 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
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
@@ -2831,7 +2856,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 
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

