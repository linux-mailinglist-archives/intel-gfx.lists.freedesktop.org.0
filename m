Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7BA42175
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F0E10E518;
	Mon, 24 Feb 2025 13:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S3X/VN7y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A0C10E153;
 Mon, 24 Feb 2025 06:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378609; x=1771914609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZbtXfJB79OFg6+6l3fhhJDWGALElYkVPVP/YWPRAnkg=;
 b=S3X/VN7yb2ynJSJ/pYDj+F+JULMU13/6DwNqgNeB0hilel2fVaCRHqvN
 ++EzAS8ZsKiTkwmQit3Hy+NiCMIcoYJXtt9k3JeFJoQFYWyuM30mN3LQD
 izF4/Ghm140RnRnr085JLF0Ky8X2OIMr8BqVE+mcKrRK/DXNimauWN2Gc
 crjISBcdTVec6kZMziF2a7gW4vQuIaNqM9PZZtX4/LslWODs57/KBLBj/
 0DwB+5gxJ6WAXz0VH6CuH6DGmfaSE9+sM97ugJ9vI1eHhML9h1UJ9j0ZS
 WwQ7NfFHE1S3smD9LFIjDNEm2u/OK9RUUbtcVV7cI9i0/oWiIo60CokBL w==;
X-CSE-ConnectionGUID: e+FMxxJ1SuaHr4iOU5y7bA==
X-CSE-MsgGUID: +dlYrXI4TVCMjUlqyT/cDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719711"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719711"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:09 -0800
X-CSE-ConnectionGUID: SAWOK2zLTLW2qNicKbbbeQ==
X-CSE-MsgGUID: W1+Eq5NTTjmJwuyXMESCAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076629"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/20] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Date: Mon, 24 Feb 2025 11:47:15 +0530
Message-ID: <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

For fixed refresh rate use fixed timings for all platforms that support
VRR. For this add checks to avoid computing and reading VRR for
platforms that do not support VRR.
For platforms that do support VRR, readback vrr timings whether or not
VRR_CTL_FLIP_LINE_EN is set in VRR_CTL or not.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++------------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 551dcc16f0d4..975fed9930c1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -344,6 +344,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin = 0, vmax = 0;
 
+	if (!HAS_VRR(display))
+		return;
+
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
@@ -358,9 +361,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
 
-	if (vmin >= vmax)
-		return;
-
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.vmax = vmax;
 
@@ -373,7 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
 
-	if (crtc_state->uapi.vrr_enabled)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
@@ -640,6 +640,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
 
+	if (!HAS_VRR(display))
+		return;
+
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
@@ -663,23 +666,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.pipeline_full =
 				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
 
-	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
-		crtc_state->vrr.flipline = intel_de_read(display,
-							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmax = intel_de_read(display,
-						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
-		crtc_state->vrr.vmin = intel_de_read(display,
-						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
-
-		if (HAS_AS_SDP(display)) {
-			trans_vrr_vsync =
-				intel_de_read(display,
-					      TRANS_VRR_VSYNC(display, cpu_transcoder));
-			crtc_state->vrr.vsync_start =
-				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
-			crtc_state->vrr.vsync_end =
-				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
-		}
+	crtc_state->vrr.flipline = intel_de_read(display,
+						 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
+	crtc_state->vrr.vmax = intel_de_read(display,
+					     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
+	crtc_state->vrr.vmin = intel_de_read(display,
+					     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
+
+	if (HAS_AS_SDP(display)) {
+		trans_vrr_vsync =
+			intel_de_read(display,
+				      TRANS_VRR_VSYNC(display, cpu_transcoder));
+		crtc_state->vrr.vsync_start =
+			REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
+		crtc_state->vrr.vsync_end =
+			REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
 	}
 
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
-- 
2.45.2

