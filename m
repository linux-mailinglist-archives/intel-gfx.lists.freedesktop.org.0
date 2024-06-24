Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDB091421F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9AE10E357;
	Mon, 24 Jun 2024 05:35:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaWqcokX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2537210E350
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207354; x=1750743354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R+ulH2M5Cz80YbdHbEbdwvtghNhrNFOE9Dxf0vPBD1c=;
 b=HaWqcokXmqN9eGVfJii3v0ZxGYhBKQHGWAMG3peCR/JFXRYm3CTXkcY3
 ysSBJn8Krgn152HWDc6dBKWRKGW/4GbNB2oRcpwTKiA+8uBPl9we0dqt0
 GZo2ZxeDzee/pbMZPp0QVD+v0j2fO5aTJXVMqhmlAihpEafUrb8BiWCZA
 rxt7VtIoum+wh3+HoBbvSg/jdzZTpbv71V/H/KmqUuGQvPg1S/F02lGbu
 BceEuV8ldVDg9gy2+bJtBlLN3ZnEGFRjGzKE5z5drlOtbgSjRZ7w2WrzN
 dl1QdhSqYhanY6t7hReVIpBizmOUpHCS1ugC8WoihtZQTRVBI66kOn9cQ A==;
X-CSE-ConnectionGUID: XseZhlBISWODKtaGySwUVA==
X-CSE-MsgGUID: dFA6CoAWSt6551nrHpn0sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567258"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567258"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:54 -0700
X-CSE-ConnectionGUID: Dahxhj5yReqZmZnq+LLelw==
X-CSE-MsgGUID: 3psAisKZRh+C5G5yV4cQ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994239"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 9/9] drm/i915/vrr: Use VRR timing generator whenever panel
 supports VRR
Date: Mon, 24 Jun 2024 11:06:00 +0530
Message-Id: <20240624053600.3803116-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
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
userspace. From MTL+, gradually move away from older timing
generator and use VRR timing generator for fixed refresh rate also.
In such a case, Flipline VMin and VMax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 59 +++++++++++++++---------
 1 file changed, 37 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 025063098370..913752424adc 100644
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
+	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(i915) >= 14) {
+		/*
+		 * for MTL+ if panel supports VRR and user has not set VRR,
+		 * always go for fixed average Vtotal mode.
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

