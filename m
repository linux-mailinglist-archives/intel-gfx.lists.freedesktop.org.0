Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE468D8354
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:03:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBC010E3BE;
	Mon,  3 Jun 2024 13:03:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyQQO8Wc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5276810E3B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419785; x=1748955785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IsEIejFGlMrEn1Y9xQeHDy065PNtWjZHknbLUz1GYB4=;
 b=FyQQO8WcQe6zKUakqJSvuQJWu7jJTkHQWFRwQl/CiPT6cRGLfg83WQo9
 rKaXZVSAXE1tkGPREPz36NHLjnzy0TWlYqZRciAcdnRZL71844SkFSIk5
 QF0FDpw/Yka2GR0GNhIss3Uwd+L7mgnHDb4j4FIxkusVQ7vxSX0P8YLz/
 5b6EIkQtYbEUWNe9Kmrv2HPRWUFHyX4qUa+IPB1Xyd8CMe0hC/HxCKJz0
 gRebBVT7wzgEvqpgWzcitgyfgMYTbjNRC3+QB+LPvTxfWVMSCT+ZhmtgW
 d3gVa+t4SiVb95XNGfCTV/3k05YIbh2Ews8r7K6T6qaLyYk+E7L5cPPrf g==;
X-CSE-ConnectionGUID: n8MtRUaQQVC8c8y214YOzg==
X-CSE-MsgGUID: 4ClgRNtjRcCNNRvZBgxo5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873391"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873391"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:03:04 -0700
X-CSE-ConnectionGUID: xKyTvAxFTEiAP9jgZ6PwMA==
X-CSE-MsgGUID: xvTTjyCKQ026PeSQxGwKfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41960034"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:03:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 5/5] drm/i915/vrr/xe2lpd: Use VRR timing generator whenever
 panel supports VRR
Date: Mon,  3 Jun 2024 18:33:19 +0530
Message-Id: <20240603130319.1594872-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
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
userspace. From XE2LPD, gradually move away from older timing
generator and use VRR timing generator if panel supports VRR but
VRR is not enabled by the userspace.
In such a case, Flipline VMin and VMax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 47 +++++++++++++++---------
 1 file changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 406838df2d7a..5d281f3c9fe4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -137,26 +137,39 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (HAS_LRR(i915))
 		crtc_state->update_lrr = true;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
-			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
-		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
+	if (!crtc_state->uapi.vrr_enabled && DISPLAY_VER(i915) >= 20) {
+		/*
+		 * for LNL+ if panel supports VRR and user has not set VRR,
+		 * always go for fixed average Vtotal mode.
+		 */
+		crtc_state->vrr.vmin = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.vmax = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.flipline = adjusted_mode->crtc_vtotal;
+		crtc_state->vrr.fixed_rr = true;
+	} else {
 
-	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
+		vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+				    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
+		vmax = adjusted_mode->crtc_clock * 1000 /
+			(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
 
-	if (vmin >= vmax)
-		return;
+		vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
+		vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and flipline>=vmin+1, hence we reduce vmin by one
-	 * to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin = vmin - 1;
-	crtc_state->vrr.vmax = vmax;
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
 	 * For XE_LPD+, we use guardband and pipeline override
@@ -171,7 +184,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			    crtc_state->framestart_delay - 1);
 	}
 
-	if (crtc_state->uapi.vrr_enabled) {
+	if (crtc_state->uapi.vrr_enabled || crtc_state->vrr.fixed_rr) {
 		crtc_state->vrr.enable = true;
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 		if (intel_dp_as_sdp_supported(intel_dp)) {
-- 
2.40.1

