Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10385938B36
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7998810E417;
	Mon, 22 Jul 2024 08:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rn6ZGvhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C97F10E411
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636781; x=1753172781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xhVNF+b4Tb0wGdM52Jrx4zUqvoR2QqVcMM/zQ5uXZXQ=;
 b=Rn6ZGvhivEDGUp4YyBFcnXSgKOHgF4fGYC+i8us1XC8SHrgH1iBrFbjn
 oQ7AZvB1E4yOQDuz8WVudtNKoEGLTcag1AQ3YItTrm/ScEPp4Iw5x+tJj
 mNJPGWSq+tYQxb9ZyAaJWCVnkaAFWPA/ogw/zwKQDRNhND4jqnqVc0thj
 qkRDOGM7qfC3QHyzfnkKKvbrV9u18Viy5awH1jDw6T1SuV3PfjjqFuGR1
 2r37YaVK9kAWLmP/fEyCh090cys+MWll912+iRpOzpiZb7KuHmoW+pjA1
 9BatTVcsGrEt4fCkpyGFmVNRNEz2kFBS/bdr9F2kz5APZr0sB1xvPeJ51 Q==;
X-CSE-ConnectionGUID: p4flPDH6Tjef3kW+RBwBWw==
X-CSE-MsgGUID: ++JiOgxASzm9VYKU1r+yNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806959"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806959"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:21 -0700
X-CSE-ConnectionGUID: C5kQ/lZKR5iiNxrE/h1EDQ==
X-CSE-MsgGUID: YaglC5gLRq+QyITX5qFt7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752939"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/10] drm/i915/vrr: Always use VRR timing generator for XELPD+
Date: Mon, 22 Jul 2024 13:57:05 +0530
Message-ID: <20240722082705.3635041-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 63 +++++++++++++++---------
 1 file changed, 41 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 50ac2770a42d..ef965c273a9e 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -174,41 +174,56 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	crtc_state->vrr.in_range =
-		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
-
 	if (HAS_LRR(i915))
 		crtc_state->update_lrr = true;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
-		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(i915) >= 20) {
+		/*
+		 * for XELPD+ always go for VRR timing generator even for
+		 * fixed refresh rate.
+		 */
+		crtc_state->vrr.vmin = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.vmax = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.flipline = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.fixed_rr = true;
+	} else {
 
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+		crtc_state->vrr.in_range =
+			intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
 
-	if (vmin >= vmax)
-		return;
+		if (!crtc_state->vrr.in_range)
+			return;
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
-	 * to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin = vmin - 1;
-	crtc_state->vrr.vmax = vmax;
 
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
+		vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+				    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+		vmax = adjusted_mode->crtc_clock * 1000 /
+			(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+
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
+
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
@@ -426,6 +441,10 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(dev_priv,
 						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
+
+		if (crtc_state->vrr.vmax == crtc_state->vrr.flipline &&
+		    crtc_state->vrr.vmin == crtc_state->vrr.flipline)
+			crtc_state->vrr.fixed_rr = true;
 	}
 
 	if (crtc_state->vrr.enable) {
-- 
2.45.2

