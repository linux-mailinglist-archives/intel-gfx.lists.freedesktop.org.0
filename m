Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33884968156
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C8B10E23A;
	Mon,  2 Sep 2024 08:05:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1hIp/hc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F2210E23A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264322; x=1756800322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=as/KSRPrL8F/iL1eF15bcB47STaw7YK0D+5qhKV22hQ=;
 b=K1hIp/hcaEqHpvh6v2QDzRgPDfa/z4f5ejCO+Ke5AdMG/6P059TnMfFP
 LU6eKyz1r9a8ZcECRijpUyJacSVEXqDlt898UTisvYa6lDgeX3JoQP8+V
 h6XY4SO7YgYslC12IlvC2iMvaJp89bP6ZCeolLCGViMWn2cx1okqdM04q
 rSiXO8+nBjfO3t6pU8gPhCu6xKZQfvVszFqFDvTzH9n7NUNDQr4sY8H5P
 /2Q/0m1kXXdUVIdQgFkTeGK1aMXeLWLc57VEbnCOZP3RhFkkPmcWL7KyO
 H909soGVyGTqUHuy8hjOc2V/OntiS7/JLN4CkbxsazulEVC5DSpGwWJ6K A==;
X-CSE-ConnectionGUID: QnQAsKlOTWix7y/OlaCAiA==
X-CSE-MsgGUID: NOTMj48qSEqId/zzy0R0kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967409"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967409"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:22 -0700
X-CSE-ConnectionGUID: QsW5wEx3QFGBNmOnHd2m2A==
X-CSE-MsgGUID: Ptwn3ZBaQw+ssyzU5Ped1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039944"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 12/13] drm/i915/vrr: Always use VRR timing generator for XELPD+
Date: Mon,  2 Sep 2024 13:36:33 +0530
Message-ID: <20240902080635.2946858-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace. From XELPD+, gradually move away from older timing
generator and use VRR timing generator for fixed refresh rate also.
In such a case, Flipline VMin and VMax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.

v2: Use VRR Timing Generator from XELPD+ instead of MTL as it needs
Wa_14015406119.
v3: Set vrr.fixed during vrr_get_config (Mitul)
v4: Avoid setting vrr.fixed when vrr.cmrr is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 61 +++++++++++++++---------
 1 file changed, 39 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e01d4b4b8fa7..625728aff5a2 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -172,41 +172,54 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	crtc_state->vrr.in_range =
-		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
-
 	if (HAS_LRR(display))
 		crtc_state->update_lrr = true;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
-		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(display) >= 20) {
+		/*
+		 * for XELPD+ always go for VRR timing generator even for
+		 * fixed refresh rate.
+		 */
+		crtc_state->vrr.vmin = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.vmax = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.flipline = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.fixed_rr = true;
+	} else {
+		crtc_state->vrr.in_range =
+			intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
 
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+		if (!crtc_state->vrr.in_range)
+			return;
 
-	if (vmin >= vmax)
-		return;
+		vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+				    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+		vmax = adjusted_mode->crtc_clock * 1000 /
+			(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
-	 * to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin = vmin - 1;
-	crtc_state->vrr.vmax = vmax;
+		vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+		vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+
+		if (vmin >= vmax)
+			return;
+
+		/*
+		 * flipline determines the min vblank length the hardware will
+		 * generate, and flipline>=vmin+1, hence we reduce vmin by one
+		 * to make sure we can get the actual min vblank length.
+		 */
+		crtc_state->vrr.vmin = vmin - 1;
+		crtc_state->vrr.vmax = vmax;
 
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
+		crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
+		crtc_state->vrr.fixed_rr = false;
+	}
 
 	/*
 	 * When panel is VRR capable and userspace has
 	 * not enabled adaptive sync mode then Fixed Average
 	 * Vtotal mode should be enabled.
 	 */
-	if (crtc_state->uapi.vrr_enabled) {
+	if (crtc_state->uapi.vrr_enabled || crtc_state->vrr.fixed_rr) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 	} else if (is_cmrr_frac_required(crtc_state) && is_edp) {
@@ -421,6 +434,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(display,
 						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+		if (!crtc_state->cmrr.enable &&
+		    crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.fixed_rr = true;
 	}
 
 	if (crtc_state->vrr.enable) {
-- 
2.45.2

