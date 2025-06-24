Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E565AE5E75
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59D810E4EF;
	Tue, 24 Jun 2025 07:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="akW47HQX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AB010E4EF;
 Tue, 24 Jun 2025 07:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751472; x=1782287472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4C0izFU2KEsQIHmrlE85I+sPQuO0I8XUbqBJA+mHhQA=;
 b=akW47HQXQ1eu5XmYr3mjdrGl1kluoYYSxYw5GlIKYiCc1l8ahGkGq4un
 y+AcmvTaKfuJXjitVT+6qF0VsWO8gEK3SBJwrxyx1MNwUWkl68FW8+IPI
 7OePtHD9tNdUiJpBujD3FH4zuaFMrONlzSqeopvYnBpwD3EGrs9JymX/K
 LEB//K4+VzRPG1E9/3GH2/Uvg7tLoK5W/dhfDSA2xbxDLbv1hu7p0ynjI
 3hATe6iu68ZTlKPunCrsoj4ifAmCR2u1RPcC0EsNtPZDPVHAfbIMjsxR+
 LIUXtQuxYIaUAL5979XqJAAzpy3zggmodpqaOcfIuYOuE+gsekxW6Z8GO w==;
X-CSE-ConnectionGUID: lwvGHMp0T4CULma/K1vJZw==
X-CSE-MsgGUID: WJYU4NQhQgCAfFJMJ8+tXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398214"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398214"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:11 -0700
X-CSE-ConnectionGUID: XnSd110qT/qZRyu9IY1m5g==
X-CSE-MsgGUID: 5il17EppQOimxOXM5RaDtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446374"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:09 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 01/18] drm/i915/vrr: Refactor vmin/vmax stuff
Date: Tue, 24 Jun 2025 13:19:31 +0530
Message-ID: <20250624074948.671761-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Refactor vmin/vmax functions for better computation.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 41 +++++++++++-------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3eed37f271b0..dd8fe4b49690 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -146,37 +146,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
 }
 
-int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vtotal(const struct intel_crtc_state *crtc_state, int vmin_vmax)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	/* Min vblank actually determined by flipline */
 	if (DISPLAY_VER(display) >= 13)
-		return intel_vrr_vmin_flipline(crtc_state);
+		return vmin_vmax;
 	else
-		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_real_vblank_delay(crtc_state);
+		return vmin_vmax + intel_vrr_real_vblank_delay(crtc_state);
 }
 
-int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_vblank_start(const struct intel_crtc_state *crtc_state,
+				  int vmin_vmax)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	return intel_vrr_vtotal(crtc_state, vmin_vmax) -
+			intel_vrr_vblank_exit_length(crtc_state);
+}
 
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_state->vrr.vmax;
-	else
-		return crtc_state->vrr.vmax +
-			intel_vrr_real_vblank_delay(crtc_state);
+int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, intel_vrr_vmin_flipline(crtc_state));
+}
+
+int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
+{
+	return intel_vrr_vtotal(crtc_state, crtc_state->vrr.vmax);
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, intel_vrr_vmin_flipline(crtc_state));
 }
 
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
+	return intel_vrr_vblank_start(crtc_state, crtc_state->vrr.vmax);
 }
 
 static bool
@@ -257,14 +261,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
 static
 int intel_vrr_fixed_rr_vtotal(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-	int crtc_vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
-
-	if (DISPLAY_VER(display) >= 13)
-		return crtc_vtotal;
-	else
-		return crtc_vtotal -
-			intel_vrr_real_vblank_delay(crtc_state);
+	return intel_vrr_vtotal(crtc_state, crtc_state->hw.adjusted_mode.crtc_vtotal);
 }
 
 static
-- 
2.48.1

