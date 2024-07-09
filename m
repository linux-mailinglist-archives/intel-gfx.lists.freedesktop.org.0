Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77B992AEB9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5673310E47D;
	Tue,  9 Jul 2024 03:26:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j08oJ/J1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65B810E47D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495579; x=1752031579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JOyMZqNNef1NeOXRXLKwEwBn9DXTI6liUH6aJf0wQDA=;
 b=j08oJ/J1dxXubxfPqUObmMn/un9WUsRKSM50x9Huv02Tq4Nup74ow4JS
 ckO9j8fY1u484N+AiIsJPRSbxV+ph47keDqP/s2Le6r1hXh81ZOCm/viG
 JbC8C8WMWcSJDe88RRqsFp4VpTMnf187H5pRM3Ts7Ql3PJvp4jRAKcatj
 Swm9KBjMwIYNm4vDnPDki27ryp8140tNKisVpZOHJ1AccnPEjNWrQN8aW
 BuvUTd8QSCpa9kvnbIrTnZBl8iT7bBWwDkjoXrsXfKgtpf6ZPsd1s3dXC
 m2fsKgG+DzFiMAz3wNBAOEB9nraEJmT6XUB/0S7Lw8U3S8YjTtrL6/T9x g==;
X-CSE-ConnectionGUID: kV6xzrY6SgO7+P9q6m9s7w==
X-CSE-MsgGUID: 7LrnCF7sQ1CBTdiBxtGMvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536481"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536481"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:19 -0700
X-CSE-ConnectionGUID: ECEfkwnbShar182Swi1N8w==
X-CSE-MsgGUID: DNy0E0JhRVqu6Q5QRCUgkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374211"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 10/10] drm/i915/vrr: Always use VRR timing generator for XELPD+
Date: Tue,  9 Jul 2024 08:56:51 +0530
Message-Id: <20240709032651.1824185-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 59 +++++++++++++++---------
 1 file changed, 37 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9f6b83f059cb..7af08e7a7896 100644
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
-- 
2.40.1

